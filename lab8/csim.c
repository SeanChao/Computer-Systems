/**
 * name: 施超
 * loginID: 518021910499
 */

#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdarg.h>

#include "cachelab.h"

const char *usage = "Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n"
                    "Options:\n"
                    "  -h         Print this help message.\n"
                    "  -v         Optional verbose flag.\n"
                    "  -s <num>   Number of set index bits.\n"
                    "  -E <num>   Number of lines per set.\n"
                    "  -b <num>   Number of block offset bits.\n"
                    "  -t <file>  Trace file.\n"
                    "\n"
                    "Examples:\n"
                    "  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n"
                    "  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace\n";

// Output flags
int debug = 0;
int verbose_flag = 0;

// Cache parameters and states
int cache_s = 0;
int cache_E = 0;
int cache_b = 0;
long access_cnt = 0;    // indicates the time of mem access to support LRU

// Statistics
int hit_count = 0;
int miss_count = 0;
int eviction_count = 0;

struct trace_line {
    char type;
    unsigned long addr;
    int size;
    struct trace_line *next;
} traces;

struct cache_line {
    int valid;
    long tag;
    long access_time;
};

struct cache_set {
    struct cache_line *lines;
};

struct cache_t {
    int set_size;
    int line_size;
    struct cache_set *sets;
} cache;

void verbose(const char *format, ...) {
    va_list args;
    va_start(args, format);
    if (verbose_flag) vprintf(format, args);
}

/**
 * Initializes memory space for cache memory, including its lines.
 * Call mem_clear() to destroy them.
 * @param set_size      Number of sets in cache.
 * @param line_size     Number of lines in one set.
 * @param block_size    Number of blocks per line.
 */
void mem_init(int set_size, int line_size, int block_size) {
    cache.set_size = set_size;
    cache.line_size = line_size;
    cache.sets = (struct cache_set *) malloc(
            sizeof(struct cache_set) * cache.set_size);
    for (int i = 0; i < cache.set_size; i++) {
        struct cache_set *cur = &(cache.sets[i]);
        cur->lines = (struct cache_line *) malloc(
                sizeof(struct cache_line) * cache.line_size);
        for (int line_idx = 0; line_idx < cache.line_size; line_idx++) {
            cur->lines[line_idx].valid = 0;
            cur->lines[line_idx].tag = 0;
            cur->lines[line_idx].access_time = 0;
        }
    }
    verbose("Initialized cache with %d set(s), %d line(s) per set and %d block(s) per line\n",
            cache.set_size, cache.line_size, block_size);
}

void mem_clear() {
    // Frees trace_line
    struct trace_line *tl = traces.next;
    while (tl) {
        struct trace_line *tmp = tl;
        tl = tl->next;
        free(tmp);
    }
    // Frees cache data structures
    for (int i = 0; i < cache.set_size; i++) {
        struct cache_set *cur = &(cache.sets[i]);
        free(cur->lines);
    }
    free(cache.sets);
}

void mem_print() {
    if (!debug) return;
    for (int i = 0; i < cache.set_size; i++) {
        struct cache_set *set = cache.sets + i;
        for (int j = 0; j < cache.line_size; j++) {
            struct cache_line line = set->lines[j];
            if (line.valid == 0 && line.tag == 0 &&
                line.access_time == 0)
                continue;
            printf("[%d] [%d] %d %lx %ld\n", i, j, line.valid, line.tag,
                   line.access_time);
        }
    }
}

void read_trace(const char *filename) {
    FILE *trace_file = fopen(filename, "r");
    struct trace_line *trace_p = &traces;
    if (trace_file == NULL) printf("%s: No such file or directory", filename);
    int c;
    while ((c = getc(trace_file)) != EOF) {
        if (c == ' ') {
            char type;
            unsigned long addr;
            int size;
            fscanf(trace_file, "%c %lx,%d", &type, &addr, &size);
            struct trace_line *newline = (struct trace_line *) malloc(
                    sizeof(struct trace_line));
            newline->type = type;
            newline->addr = addr;
            newline->size = size;
            trace_p->next = newline;
            trace_p = trace_p->next;
        } else if (c == 'I') {
            unsigned long addr;
            int size;
            fscanf(trace_file, "  %lux,%d", &addr, &size);
        }
    }
    fclose(trace_file);
}


void parse_addr(unsigned long addr, long *tag, long *index, long *offset) {
    int t = 64 - cache_s - cache_b; // m (word size 64) minus s and b
    *tag = (addr >> (cache_s + cache_b)) & ((1l << t) - 1);
    *index = (addr >> cache_b) & ((1l << cache_s) - 1);
    *offset = addr & ((1l << cache_b) - 1);
}

void data_load(unsigned long addr) {
    long tag;
    long index;
    long offset;
    parse_addr(addr, &tag, &index, &offset);
    struct cache_set *set = cache.sets + index;
    int lr_idx = 0;
    long lr_time = set->lines[0].access_time;
    int invalid_line = -1;
    for (int i = 0; i < cache.line_size; i++) {
        struct cache_line *line = set->lines + i;
        if (!line->valid) invalid_line = i;
        if (line->access_time < lr_time) {
            lr_idx = i;
            lr_time = line->access_time;
        }
        if (line->tag == tag && line->valid) {
            verbose(" hit");
            line->access_time = ++access_cnt;
            hit_count++;
            return;
        }
    }
    miss_count++;
    verbose(" miss");
    // Loads if cache miss
    struct cache_line newline;
    newline.valid = 1;
    newline.access_time = ++access_cnt;
    newline.tag = tag;
    if (invalid_line != -1) {
        set->lines[invalid_line] = newline;
    } else {
        // Evicts the least updated line
        set->lines[lr_idx] = newline;
        eviction_count++;
        verbose(" eviction");
    }
    if (debug)
        verbose("\n\t~ tag: %x, index = %ld, offset = %ld\n", tag, index,
                offset);
}

void data_store(unsigned long addr) {
    data_load(addr);
}

void data_modify(unsigned long addr) {
    data_load(addr);
    data_store(addr);
}

void simulate() {
    struct trace_line *tp = traces.next;
    while (tp != NULL) {
        mem_print();
        printf("%c %lx,%d", tp->type, tp->addr, tp->size);
        switch (tp->type) {
            case 'L':
                data_load(tp->addr);
                break;
            case 'M':
                data_modify(tp->addr);
                break;
            case 'S':
                data_store(tp->addr);
                break;
            default:
                break;
        }
        tp = tp->next;
        verbose("\n");
    }
}

int main(int argc, char *argv[]) {
    // Parses the commandline arguments
    int opt;
    char *trace_file;
    while ((opt = getopt(argc, argv, "hvs:E:b:t:d")) != -1) {
        switch (opt) {
            case 'h':
                printf("%s", usage);
                break;
            case 'v':
                verbose_flag = 1;
                break;
            case 's':
                cache_s = atoi(optarg);
                break;
            case 'E':
                cache_E = atoi(optarg);
                break;
            case 'b':
                cache_b = atoi(optarg);
                break;
            case 't':
                trace_file = optarg;
                break;
            case 'd':
                debug = 1;
                break;
            default:
                printf("error");
                break;
        }
    }
    printf("s: %d, E: %d, b: %d, t: %s, v: %d\n", cache_s, cache_E, cache_b,
           trace_file, verbose_flag);
    if (trace_file == NULL || cache_s == 0 || cache_E == 0 || cache_b == 0) {
        printf("%s: Missing required command line argument\n",
               argv[0]);
        printf("%s", usage);
        exit(1);
    }
    // Reads and parses the trace_file
    read_trace(trace_file);
    // Initializes cache memory
    int set_size = 1 << cache_s;
    int line_size = cache_E;
    int block_size = 1 << cache_b;
    mem_init(set_size, line_size, block_size);
    // Simulates
    simulate();
    // Frees malloc memory
    mem_clear();
    // Prints the summary result
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
