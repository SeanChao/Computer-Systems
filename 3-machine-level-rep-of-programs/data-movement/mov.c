// char short int long

// typedef char src_t;
// typedef char dst_t;
//	movzbl	(%rdi), %eax
//	movb	%al, (%rsi)

// typedef char src_t;
// typedef short dst_t;
// movsbw	(%rdi), %ax
// movw	%ax, (%rsi)

// typedef char src_t;
// typedef int dst_t;
//	movsbl	(%rdi), %eax
//	movl	%eax, (%rsi)

// typedef char src_t;
// typedef long dst_t;
//	movsbq	(%rdi), %rax
//	movq	%rax, (%rsi)

// typedef char src_t;
// typedef unsigned char dst_t;
// movzbl	(%rdi), %eax
// movb	%al, (%rsi)

// typedef char src_t;
// typedef unsigned short dst_t;
// movsbw	(%rdi), %ax
// movw	%ax, (%rsi)

// typedef char src_t;
// typedef unsigned int dst_t;
// movsbl	(%rdi), %eax
// movl	%eax, (%rsi)

// typedef char src_t;
// typedef unsigned long dst_t;
// movsbq	(%rdi), %rax
// movq	%rax, (%rsi)

// typedef int src_t;
// typedef char dst_t;
//	movl	(%rdi), %eax
//	movb	%al, (%rsi)

// typedef int src_t;
// typedef int dst_t;
//  movl	(%rdi), %eax
//  movl	%eax, (%rsi)

// typedef int src_t;
// typedef short dst_t;
//  movl	(%rdi), %eax
//  movw	%ax, (%rsi)

// typedef int src_t;
// typedef long dst_t;
//	movslq	(%rdi), %rax
//	movq	%rax, (%rsi)

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

// unsigned short -> (signed)
// typedef unsigned short src_t;
// typedef char dst_t;
//	movzwl	(%rdi), %eax
//	movb	%al, (%rsi)
// typedef unsigned short src_t;
// typedef short dst_t;
//	movzwl	(%rdi), %eax
//	movw	%ax, (%rsi)
// typedef unsigned short src_t;
// typedef int dst_t;
// typedef unsigned short src_t;
// typedef long dst_t;

// typedef unsigned src_t;
// typedef long dst_t;
//	movl	(%rdi), %eax
//  movq	%rax, (%rsi)

// typedef unsigned char src_t;
// typedef unsigned char dst_t;
//	movzbl	(%rdi), %eax
//	movb	%al, (%rsi)

// typedef unsigned char src_t;
// typedef unsigned dst_t;
//	movzbl	(%rdi), %eax
//	movl	%eax, (%rsi)

// typedef unsigned char src_t;
// typedef char dst_t;
//	movzbl	(%rdi), %eax
//	movb	%al, (%rsi)

// typedef unsigned char src_t;
// typedef short dst_t;
//	movzbl	(%rdi), %eax
//	movw	%ax, (%rsi)

// typedef unsigned char src_t;
// typedef int dst_t;
//	movzbl	(%rdi), %eax
//	movl	%eax, (%rsi)

// typedef unsigned char src_t;
// typedef long dst_t;
//	movzbl	(%rdi), %eax
//	movq	%rax, (%rsi)

// typedef char src_t;
// typedef short dst_t;
//	movsbw	(%rdi), %ax
//	movw	%ax, (%rsi)

// typedef unsigned long src_t;
// typedef short dst_t;

dst_t cast(src_t *sp, dst_t *dp) {
    *dp = (dst_t)*sp;
    return *dp;
}
