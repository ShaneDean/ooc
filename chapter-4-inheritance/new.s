	.file	"new.c"
	.section	.rodata
.LC0:
	.string	"new.c"
.LC1:
	.string	"self && *cp && (*cp)->draw"
	.text
	.globl	draw
	.type	draw, @function
draw:
.LFB2:
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
	cmpq	$0, -24(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L3
.L2:
	movl	$__PRETTY_FUNCTION__.2319, %ecx
	movl	$10, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	draw, .-draw
	.section	.rodata
.LC2:
	.string	"p"
	.text
	.globl	new
	.type	new, @function
new:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L5
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L5:
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	calloc
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.L6
	movl	$__PRETTY_FUNCTION__.2325, %ecx
	movl	$20, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L6:
	movq	-184(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-216(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -184(%rbp)
.L7:
	movq	-184(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	new, .-new
	.globl	delete
	.type	delete, @function
delete:
.LFB4:
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
	cmpq	$0, -24(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -24(%rbp)
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	delete, .-delete
	.section	.rodata
	.type	__PRETTY_FUNCTION__.2319, @object
	.size	__PRETTY_FUNCTION__.2319, 5
__PRETTY_FUNCTION__.2319:
	.string	"draw"
	.type	__PRETTY_FUNCTION__.2325, @object
	.size	__PRETTY_FUNCTION__.2325, 4
__PRETTY_FUNCTION__.2325:
	.string	"new"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
