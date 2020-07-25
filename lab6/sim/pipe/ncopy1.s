	.file	"ncopy.c"
	.text
	.globl	ncopy
	.type	ncopy, @function
ncopy:
.LFB23:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L2
.L3:
	subq	$1, %rdx
	movq	%rdi, %rsi
	movq	%r8, %rdi
.L2:
	testq	%rdx, %rdx
	jle	.L5
	leaq	8(%rdi), %r8
	movq	(%rdi), %rcx
	leaq	8(%rsi), %rdi
	movq	%rcx, (%rsi)
	testq	%rcx, %rcx
	jle	.L3
	addq	$1, %rax
	jmp	.L3
.L5:
	ret
	.cfi_endproc
.LFE23:
	.size	ncopy, .-ncopy
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"count=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$0, %eax
	jmp	.L7
.L8:
	leaq	1(%rax), %rdx
	leaq	src(%rip), %rcx
	movq	%rdx, (%rcx,%rax,8)
	movq	%rdx, %rax
.L7:
	cmpq	$7, %rax
	jle	.L8
	movl	$8, %edx
	leaq	dst(%rip), %rsi
	leaq	src(%rip), %rdi
	call	ncopy
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.comm	dst,64,32
	.comm	src,64,32
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1~18.04.1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
