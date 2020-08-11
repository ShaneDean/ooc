	.file	"Circle.c"
	.text
	.type	Circle_ctor, @function
Circle_ctor:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	Point(%rip), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L2
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L3
.L2:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	%rdx, %rax
	leaq	8(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L3:
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	Circle_ctor, .-Circle_ctor
	.section	.rodata
.LC0:
	.string	" Circle at %d, %d  rad  %d\n"
	.text
	.type	Circle_draw, @function
Circle_draw:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	Circle_draw, .-Circle_draw
	.section	.rodata
	.align 32
	.type	_Circle, @object
	.size	_Circle, 32
_Circle:
	.quad	24
	.quad	Circle_ctor
	.quad	0
	.quad	Circle_draw
	.globl	Circle
	.data
	.align 8
	.type	Circle, @object
	.size	Circle, 8
Circle:
	.quad	_Circle
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
