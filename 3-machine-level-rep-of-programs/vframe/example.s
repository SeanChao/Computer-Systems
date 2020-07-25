	.file	"example.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"sizeof struct: %d\n"
	.text
	.globl	vframe_new
	.type	vframe_new, @function
vframe_new:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movq	%rsi, %r13
	movq	%rdx, %r12
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movl	$10, %esi
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	leaq	(%rbx,%rbx,4), %rax
	leaq	15(%rax,%rax), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %rdi
	movq	e(%rip), %rax
	movq	%rax, (%rsp)
	movzwl	8+e(%rip), %eax
	movw	%ax, 8(%rsp)
	movl	$1, %eax
	jmp	.L2
.L3:
	leaq	0(,%rax,4), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	(%r12,%rcx,2), %rcx
	addq	%rax, %rdx
	leaq	(%rdi,%rdx,2), %rdx
	movq	(%rcx), %rsi
	movq	%rsi, (%rdx)
	movzwl	8(%rcx), %ecx
	movw	%cx, 8(%rdx)
	addq	$1, %rax
.L2:
	cmpq	%rbx, %rax
	jl	.L3
	leaq	0(%r13,%r13,4), %rax
	leaq	(%rdi,%rax,2), %rdx
	movq	(%rdx), %rax
	movq	%rax, -50(%rbp)
	movzwl	8(%rdx), %edx
	movw	%dx, -42(%rbp)
	movzwl	%dx, %edx
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L6
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L6:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	vframe_new, .-vframe_new
	.comm	e,10,8
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
