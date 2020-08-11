	.file	"Point.c"
	.text
	.type	Point_ctor, @function
Point_ctor:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
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
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L4
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
	jmp	.L5
.L4:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	%rdx, %rax
	leaq	8(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L5:
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	Point_ctor, .-Point_ctor
	.section	.rodata
.LC0:
	.string	"\" .\" at %d, %d\n"
	.text
	.type	Point_draw, @function
Point_draw:
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
	.size	Point_draw, .-Point_draw
	.section	.rodata
	.align 32
	.type	_Point, @object
	.size	_Point, 32
_Point:
	.quad	16
	.quad	Point_ctor
	.quad	0
	.quad	Point_draw
	.globl	Point
	.data
	.align 8
	.type	Point, @object
	.size	Point, 8
Point:
	.quad	_Point
	.text
	.globl	move
	.type	move, @function
move:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	move, .-move
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
