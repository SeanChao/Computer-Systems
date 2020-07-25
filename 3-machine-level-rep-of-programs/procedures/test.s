	.file	"test.c"
	.text
	.p2align 4,,15
	.globl	A
	.type	A, @function
A:
.LFB0:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	7(%rdi), %rax
	leaq	5(%rdi), %rbx
	leaq	3(%rdi), %rcx
	leaq	2(%rdi), %rdx
	leaq	1(%rdi), %rsi
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	leaq	4(%rdi), %r8
	movq	%rbx, %r9
	movq	%rax, 8(%rsp)
	leaq	8(%rsp), %rax
	pushq	%rax
	.cfi_def_cfa_offset 40
	pushq	$6
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	call	C@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	cltq
	addq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	A, .-A
	.p2align 4,,15
	.globl	B
	.type	B, @function
B:
.LFB1:
	.cfi_startproc
	cmpq	$1, %rdi
	jle	.L7
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	-1(%rdi), %rdi
	xorl	%eax, %eax
	call	D@PLT
	cltq
	imulq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore 3
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	B, .-B
	.ident	"GCC: (Debian 7.3.0-19) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
