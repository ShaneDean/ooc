	.file	"main.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L2
.L6:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$112, %eax
	je	.L4
	jmp	.L2
.L4:
	movq	Point(%rip), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	new
	movq	%rax, -8(%rbp)
	nop
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	draw
	movq	-8(%rbp), %rax
	movl	$20, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	move
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	draw
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	delete
.L2:
	addq	$8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
