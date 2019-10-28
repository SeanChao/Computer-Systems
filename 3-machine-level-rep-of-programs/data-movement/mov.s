	.file	"mov.c"
	.text
	.globl	cast
	.type	cast, @function
cast:
.LFB0:
	.cfi_startproc
	movzbl	(%rdi), %eax
	movb	%al, (%rsi)
	ret
	.cfi_endproc
.LFE0:
	.size	cast, .-cast
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
