/*
 * mm.c - A balanced malloc package.
 *
 * In this approach, free list is implemented with explicit segregated fits
 * policy.
 *
 * Free lists are segregated into equivalence classes of size by powers of 2.
 * With a total number of n lists, we have classes like:
 * {1}, {2}, {3, 4}, {5, 6, 7, 8},..., {2^(n-2)+1,..., INF}
 *
 * A free block has the following format:
 * +------------------+
 * |1   |2       |3   |
 * +------------------+
 * - 1. header, 4 bytes, including block size and allocated bit (0)
 * - 2. pointer to next free block in the same free list, 8 bytes
 * - 3. footer, the same as header
 *
 * An allocated block has the following format:
 * +-----------------------+
 * |1   |2       |3   |4   |
 * +-----------------------+
 * - 1. header, 4 bytes, including block size and allocated bit (1)
 * - 2. payload
 * - 3. (optional) alignment padding
 * - 4. footer, the same as header
 *
 * To allocate a block, the allocator tries to find an appropriate block in free
 * lists first according to required size. If this fails, then the allocator
 * would increment the brk pointer and get a large enough block.
 * To free a block, header and footer is modified and the free block is then
 * immediately coalesced and added to free list.
 * To reallocate a block, if the new size of the block is smaller than the old
 * one, the allocator would use the original block and recycle the remained part
 * of the block. Otherwise, the allocator would try to coalesce adjacent free
 * blocks and place the block. The fallback approach is to allocate a new block,
 * copy data and free the old block.
 */
#include "mm.h"

#include <assert.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"

#define MEM_CHECK_FLAG   0
#define verbose_flag     0
#define mem_inspect_flag 0
#define verbose_mem      1
#define free_list_print  1
int mem_check_alloc = 0;

/* double word (8 bytes) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT - 1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE     4         /* Word and header/footer size (bytes) */
#define DSIZE     8         /* Double word size (bytes) */
#define CHUNKSIZE (1 << 12) /* Extend heap by this amount (bytes) */

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)      (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char *)(bp)-WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE(((char *)(bp)-DSIZE)))

/* Segregated Fits Configuration*/
#define CSIZE   16           // Number of segregated classes
#define MIN_BLK (4 * WSIZE)  // Min block size (header(4) + next(8) + footer(4))

// Write address `addr` to M[p]
#define W_FREE_NEXT(p, addr) (*(long *)(p) = (long)(addr))
// returns a pointer to next free block in this free list, read 8 bytes
#define NEXT(p) ((void *)(*(long *)(p)))

/* Global variables */
static char *heap_listp = 0; /* Pointer to first block */
static char *fit_ptr;
static void *free_lists[CSIZE] = {0};  // an array of free lists

/* function header */
static void *extend_heap(size_t words);
static void *coalesce(void *ptr);
static void *place(void *bp, size_t asize);
static void *find_fit(size_t size);
static int loc_class(size_t size);
static void add_block_to_list(void *ptr);
static void remove_block(void *ptr);

int mm_check(void);
void mem_inspect(void);

/*
 * mm_init - initialize the malloc package.
 */
int mm_init(void) {
    if ((heap_listp = (char *)mem_sbrk(4 * WSIZE)) == (void *)-1) {
        return -1;
    }
    memset(free_lists, 0, sizeof(void *) * CSIZE);  // reset free list to 0
    PUT(heap_listp, 0);
    PUT(heap_listp + WSIZE, PACK(DSIZE, 1));
    PUT(heap_listp + 2 * WSIZE, PACK(DSIZE, 1));
    PUT(heap_listp + 3 * WSIZE, PACK(0, 1));  // epilogue block
    heap_listp += 2 * WSIZE;
    fit_ptr = heap_listp;
    if (extend_heap(CHUNKSIZE / WSIZE + 32) == NULL) return -1;
    // heap_list_p now points to the first block
    void *next_blk = NEXT_BLKP(heap_listp);
    if (GET_SIZE(HDRP(next_blk)) > 0) {
        add_block_to_list(next_blk);
    }
    return 0;
}

/*
 * mm_malloc - Allocate a block using strategy implemented in find_fit.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
    if (size == 0) return NULL;
    int newsize = (size <= DSIZE)
                      ? 2 * DSIZE
                      : DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    char *ptr;
    if ((ptr = find_fit(newsize)) != NULL) {
        ptr = place(ptr, newsize);
        return ptr;
    }
    // Extend heap to get more memory
    size_t extendsize = MAX(newsize, CHUNKSIZE);
    if ((ptr = extend_heap(extendsize / WSIZE)) == NULL) return NULL;
    ptr = place(ptr, newsize);
    return ptr;
}

/*
 * mm_free - Freeing and coalesce a block.
 * The freed block will be added to free list.
 */
void mm_free(void *ptr) {
    size_t size = GET_SIZE(HDRP(ptr));
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    void *cp = coalesce(ptr);
    add_block_to_list(cp);
}

/*
 * mm_realloc - Implemented by reusing old block first. If fails, try coalescing
 * adjacent blocks. If fails, allocate a new block and free the old block.
 */
void *mm_realloc(void *ptr, size_t size) {
    void *oldptr = ptr;
    void *newptr;
    size_t copySize;
    size_t newsize;
    size_t old_size = GET_SIZE(HDRP(ptr));

    if (size <= DSIZE)
        newsize = 2 * DSIZE;
    else
        newsize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);

    copySize = old_size - DSIZE;
    if (size < copySize) copySize = size;

    if (newsize <= old_size) {
        return place(ptr, newsize);
    } else {
        newptr = coalesce(ptr);
        if (GET_SIZE(HDRP(newptr)) >= newsize) {
            // block after coalescing is large enough
            if (newptr != ptr) memcpy(newptr, ptr, copySize);
            size_t csize = GET_SIZE(HDRP(newptr));
            if (csize - newsize >= MIN_BLK) {
                PUT(HDRP(newptr), PACK(newsize, 1));
                PUT(FTRP(newptr), PACK(newsize, 1));
                void *np = NEXT_BLKP(newptr);
                PUT(HDRP(np), PACK(csize - newsize, 0));
                PUT(FTRP(np), PACK(csize - newsize, 0));
                // put splitted free block into appropriate free list
                add_block_to_list(np);
            } else {
                PUT(HDRP(newptr), PACK(csize, 1));
                PUT(FTRP(newptr), PACK(csize, 1));
            }
        } else {
            // fallback: allocate new one and free the old one
            newptr = mm_malloc(newsize);
            if (newptr == NULL) return NULL;
            copySize = old_size - DSIZE;
            if (newsize < copySize) copySize = newsize;
            memcpy(newptr, oldptr, copySize);
            mm_free(oldptr);
        }
    }
    return newptr;
}

/**
 * Extending the heap memory by calling mem_sbrk
 */
static void *extend_heap(size_t words) {
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    if ((long)(bp = mem_sbrk(size)) == -1) return NULL;

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));  // Free block header, old epilogue footer
    PUT(FTRP(bp), PACK(size, 0));  // Free block footer
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));  // New epilogue header

    return bp;
}

/**
 * Coalesce free blocks with adjacent blocks.
 * Coalesced blocks would be removed from free lists.
 */
static void *coalesce(void *ptr) {
    size_t prev_allocated = GET_ALLOC(HDRP(PREV_BLKP(ptr)));
    size_t next_allocated = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
    size_t size = GET_SIZE(HDRP(ptr));
    if (prev_allocated && next_allocated)
        return ptr;
    else if (prev_allocated && !next_allocated) {
        remove_block(NEXT_BLKP(ptr));
        size += GET_SIZE(HDRP(NEXT_BLKP(ptr)));
        PUT(HDRP(ptr), PACK(size, 0));
        PUT(FTRP(ptr), PACK(size, 0));
    } else if (!prev_allocated && next_allocated) {
        remove_block(PREV_BLKP(ptr));
        size += GET_SIZE(FTRP(PREV_BLKP(ptr)));
        PUT(FTRP(ptr), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(ptr)), PACK(size, 0));
        ptr = PREV_BLKP(ptr);
    } else {
        remove_block(NEXT_BLKP(ptr));
        remove_block(PREV_BLKP(ptr));
        size += GET_SIZE(HDRP(PREV_BLKP(ptr))) + GET_SIZE(FTRP(NEXT_BLKP(ptr)));
        PUT(HDRP(PREV_BLKP(ptr)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(ptr)), PACK(size, 0));
        ptr = PREV_BLKP(ptr);
    }
    return ptr;
}

/**
 * Find fit in segregated free lists.
 * First locate the class of given size and then iterate through that free list
 * and find a block with first fit strategy. The return blocked is removed from
 * free list.
 */
static void *find_fit(size_t size) {
    // locate class
    int class_idx = loc_class(size);
    void *blk_prev = NULL;
    void *blk = NULL;
    // Looks for suitable class. If fails, go to higher class
    for (int idx = class_idx; idx < CSIZE; idx++) {
        blk = free_lists[idx];
        blk_prev = &free_lists[idx];
        // Find in current class
        while (blk) {
            if (GET_SIZE(HDRP(blk)) >= size) break;
            blk_prev = blk;
            blk = NEXT(blk);
        }
        if (blk != NULL) {
            // remove the block from its free list
            W_FREE_NEXT(blk_prev, NEXT(blk));
            break;
        }
    }
    return blk;
}

/**
 * Place `asize` block in the block `bp`.
 * If remained size in bp is no less than minimum block size defined in macro
 * MIN_BLK, the block is splitted and the remained part is added to free list.
 * The block would be placed at bp in default case. To improve memory
 * utilization, it would be placed to the right part of bp if its size is much
 * less than the previous allocated block.
 */
static void *place(void *bp, size_t asize) {
    size_t csize = GET_SIZE(HDRP(bp));
    if ((csize - asize) >= MIN_BLK) {
        if ((GET_SIZE(HDRP(PREV_BLKP(bp))) > asize * 2)|| (2*asize >= csize)) {
            // if the block is large(more than half), allocate it to right part
            // to reduce external fragmentation
            PUT(HDRP(bp), PACK(csize - asize, 0));
            PUT(FTRP(bp), PACK(csize - asize, 0));
            void *alloc = NEXT_BLKP(bp);
            PUT(HDRP(alloc), PACK(asize, 1));
            PUT(FTRP(alloc), PACK(asize, 1));
            add_block_to_list(bp);
            return alloc;
        } else {
            PUT(HDRP(bp), PACK(asize, 1));
            PUT(FTRP(bp), PACK(asize, 1));
            void *rest = NEXT_BLKP(bp);
            PUT(HDRP(rest), PACK(csize - asize, 0));
            PUT(FTRP(rest), PACK(csize - asize, 0));
            add_block_to_list(rest);
        }
    } else {
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
    return bp;
}

/**
 * Find class index in free lists of given size.
 * This function uses bitwise operations and binary search to improve
 * efficiency.
 */
static int loc_class(size_t size) {
    if (size > (1 << (CSIZE - 1))) return CSIZE - 1;
    int l = 3;
    int r = CSIZE;
    int n = -1;
    while (l <= r) {
        n = (l + r) >> 1;
        int min = 1 << (n - 1);
        int max = 1 << n;
        if (min < size && size <= max) return n;
        if (min < size)
            l = n + 1;
        else
            r = n - 1;
    }
    // default case determined by segregated list parameters. In practice, no
    // case would fallback to here. This return value is to keep consistency
    // with other naive algorithms.
    return 3;
}

/**
 * Adds a block to free list.
 */
static void add_block_to_list(void *ptr) {
    size_t size = GET_SIZE(HDRP(ptr));
    // located the class according to size
    int class_idx = loc_class(size);
    // LIFO: free list
    void *old_head = free_lists[class_idx];
    W_FREE_NEXT(ptr, old_head);
    free_lists[class_idx] = ptr;
}

/**
 * Removes a block from free list.
 */
static void remove_block(void *ptr) {
    int class_idx = loc_class(GET_SIZE(HDRP(ptr)));
    void *blk_prev = &free_lists[class_idx];
    void *blk = free_lists[class_idx];
    // Find in current class
    while (blk && blk != ptr) {
        blk_prev = blk;
        blk = NEXT(blk);
    }
    if (blk != NULL) {
        // move the block out of free list
        W_FREE_NEXT(blk_prev, NEXT(blk));
    } else {
        fprintf(stderr, "ERR! Failed to find free block.\n");
    }
}

/**
 * Heap consistency checker
 * This checker checks the consistency of heap memory allocated by this
 * allocator, including every block in the free list beging marked as free, all
 * free blocks being in the free list, all pointers pointing to a valid heap
 * address.
 * This function returns a non-zero value if and only if these consistency
 * checks are all passed.
 */
int mm_check() {
    if (!MEM_CHECK_FLAG || mem_check_alloc) return 1;
    // Check all free blocks' existence in free list
    char *p = heap_listp;
    while (GET_SIZE(HDRP(p)) > 0) {
        int a = GET_ALLOC(HDRP(p));
        if (!a) {
            int cid = loc_class(GET_SIZE(HDRP(p)));
            void *fp = free_lists[cid];
            while (fp) {
                if (fp == p) break;
                fp = NEXT(fp);
            }
            if (fp == NULL) {
                fprintf(stderr,
                        "\033[;31mFree block %p not appear in free list "
                        "%d size=%u\n\033[;0m",
                        p, cid, GET_SIZE(HDRP(p)));
                return 0;
            }
        }
        p = NEXT_BLKP(p);
        if ((void *)p < mem_heap_lo() || (void *)p > mem_heap_hi() + 1) {
            fprintf(stderr,
                    "Err! trying to add a pointer outside heap memory to "
                    "list\n");
            return 0;
        }
    }
    // Checks blocks in free list are free
    for (int i = 0; i < CSIZE; i++) {
        void *p = free_lists[i];
        while (p) {
            if (p < mem_heap_lo() || p > mem_heap_hi() + 1) {
                fprintf(stderr,
                        "Err! A pointer in free list lies outside heap\n");
                return 0;
            }
            int alloc = GET_ALLOC(HDRP(p));
            if (alloc != 0) {
                fprintf(
                    stderr,
                    "\033[;31mBlock in free list is not free. %p in  free list "
                    "%d\n\033[;0m",
                    p, i);
                return 0;
            }
            p = NEXT(p);
        }
    }
    return 1;
}

void mem_inspect() {
    if (!mem_inspect_flag) return;
    char *p = heap_listp;
    printf("---------------------\n");
    if (verbose_mem) {
        while (GET_SIZE(HDRP(p)) > 0) {
            printf("%p (%d) [%u]\n", p, GET_ALLOC(HDRP(p)), GET_SIZE(HDRP(p)));
            p = NEXT_BLKP(p);
            if ((void *)p < mem_heap_lo() || (void *)p > mem_heap_hi() + 1) {
                fprintf(stderr, "Err! trying to access outside heap memory\n");
                break;
            }
        }
    }
    if (free_list_print) {
        printf("free list:\n");
        for (int i = 0; i < CSIZE; i++) {
            void *p = free_lists[i];
            if (!p) continue;
            printf("[%d] ", i);
            while (p) {
                printf("-> %p ", p);
                fflush(stdout);
                if (p == NEXT(p)) {
                    fprintf(stderr,
                            "\033[;31mErr! self link in free list %d\033[;0m\n",
                            i);
                    exit(233);
                }
                p = NEXT(p);
            }
            printf("\n");
        }
    }
    printf("---------------------\n");
}
