// typedef long src_t;
// typedef long dst_t;
// 	movq	(%rdi), %rax
//  movq	%rax, (%rsi)

// typedef int src_t;
// typedef long dst_t;
//	movslq	(%rdi), %rax
//  movq	%rax, (%rsi)

// typedef char src_t;
// typedef unsigned dst_t;
//  movsbl	(%rdi), %eax
//  movl	%eax, (%rsi)

// typedef unsigned src_t;
// typedef long dst_t;
//	movl	(%rdi), %eax
//  movq	%rax, (%rsi)

// typedef int src_t;
// typedef char dst_t;
//	movl	(%rdi), %eax
//	movb	%al, (%rsi)

// typedef unsigned char src_t;
// typedef unsigned dst_t;
//	movzbl	(%rdi), %eax
//	movl	%eax, (%rsi)

typedef char src_t;
typedef short dst_t;
//	movsbw	(%rdi), %ax
//	movw	%ax, (%rsi)

dst_t test(src_t *sp, dst_t *dp) {
    *dp = (dst_t)*sp;
    return *dp;
}
