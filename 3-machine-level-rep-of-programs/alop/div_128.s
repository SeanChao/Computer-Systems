	.file	"div_128.c"
	.text
	.p2align 4,,15
	.globl	f2
	.type	f2, @function
f2:
.LFB0:
	.cfi_startproc
	leaq	-1(%rsi), %rcx
	imulq	%rcx, %rdx
	leaq	(%rdx,%rdi,2), %rax
	imulq	%rax, %rsi
	movq	%rsi, %rax
	shrq	$63, %rax
	addq	%rsi, %rax
	sarq	%rax
	ret
	.cfi_endproc
.LFE0:
	.size	f2, .-f2
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
