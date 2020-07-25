	.file	"examples.c"
	.text
	.globl	sum_list
	.type	sum_list, @function
sum_list:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
.L2:
	testq	%rdi, %rdi
	je	.L4
	addq	(%rdi), %rax
	movq	8(%rdi), %rdi
	jmp	.L2
.L4:
	ret
	.cfi_endproc
.LFE0:
	.size	sum_list, .-sum_list
	.globl	rsum_list
	.type	rsum_list, @function
rsum_list:
.LFB1:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L7
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %rdi
	call	rsum_list
	addq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore 3
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	rsum_list, .-rsum_list
	.globl	copy_block
	.type	copy_block, @function
copy_block:
.LFB2:
	.cfi_startproc
	movl	$0, %eax
.L13:
	testq	%rdx, %rdx
	jle	.L15
	movq	(%rdi), %rcx
	movq	%rcx, (%rsi)
	xorq	%rcx, %rax
	subq	$1, %rdx
	leaq	8(%rsi), %rsi
	leaq	8(%rdi), %rdi
	jmp	.L13
.L15:
	ret
	.cfi_endproc
.LFE2:
	.size	copy_block, .-copy_block
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1~18.04.1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
