	.file	"main_loop.c"
	.comm	Add,8,8
	.comm	Sub,8,8
	.comm	Minus,8,8
	.comm	Value,8,8
	.comm	Mult,8,8
	.comm	Div,8,8
	.local	token
	.comm	token,4,4
	.local	number
	.comm	number,8,8
	.local	onError
	.comm	onError,200,32
	.text
	.globl	error
	.type	error, @function
error:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	movq	%rdi, -216(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	stderr(%rip), %rax
	leaq	-200(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	_IO_putc
	movl	$1, %esi
	movl	$onError, %edi
	call	longjmp
	.cfi_endproc
.LFE0:
	.size	error, .-error
	.type	sum, @function
sum:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %eax
	call	product
	cltq
	movq	%rax, -8(%rbp)
.L9:
	movl	token(%rip), %eax
	cmpl	$43, %eax
	je	.L5
	cmpl	$45, %eax
	je	.L6
	jmp	.L10
.L5:
	movq	Add(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L7
.L6:
	movq	Sub(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L7
.L10:
	movq	-8(%rbp), %rax
	jmp	.L11
.L7:
	movl	$0, %edi
	movl	$0, %eax
	call	scan
	movl	$0, %eax
	call	product
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	new
	movq	%rax, -8(%rbp)
	jmp	.L9
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	sum, .-sum
	.section	.rodata
.LC0:
	.string	"bad factor: '%c' 0x%x"
.LC1:
	.string	"expecting )"
	.text
	.type	factor, @function
factor:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	token(%rip), %eax
	cmpl	$43, %eax
	je	.L14
	cmpl	$43, %eax
	ja	.L15
	cmpl	$40, %eax
	je	.L16
	jmp	.L13
.L15:
	cmpl	$45, %eax
	je	.L17
	cmpl	$110, %eax
	je	.L18
	jmp	.L13
.L14:
	movl	$0, %edi
	movl	$0, %eax
	call	scan
	call	factor
	jmp	.L19
.L17:
	movl	$0, %edi
	movl	$0, %eax
	call	scan
	call	factor
	movq	%rax, %rdx
	movq	Minus(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	new
	jmp	.L19
.L13:
	movl	token(%rip), %edx
	movl	token(%rip), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	error
.L18:
	movq	number(%rip), %rax
	movq	Value(%rip), %rdx
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movq	%rdx, %rdi
	movl	$1, %eax
	call	new
	movq	%rax, -8(%rbp)
	jmp	.L20
.L16:
	movl	$0, %edi
	movl	$0, %eax
	call	scan
	call	sum
	movq	%rax, -8(%rbp)
	movl	token(%rip), %eax
	cmpl	$41, %eax
	je	.L20
	movl	$.LC1, %edi
	movl	$0, %eax
	call	error
.L20:
	movl	$0, %edi
	movl	$0, %eax
	call	scan
	movq	-8(%rbp), %rax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	factor, .-factor
	.section	.rodata
.LC2:
	.string	"trash after sum"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8208, %rsp
	movl	$0, -12(%rbp)
	movl	$onError, %edi
	call	_setjmp
	testl	%eax, %eax
	je	.L22
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L23
.L22:
	jmp	.L23
.L25:
	leaq	-8208(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	scan
	testl	%eax, %eax
	je	.L23
	call	sum
	movq	%rax, -8(%rbp)
	movl	token(%rip), %eax
	testl	%eax, %eax
	je	.L24
	movl	$.LC2, %edi
	movl	$0, %eax
	call	error
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	process
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	delete
.L23:
	leaq	-8208(%rbp), %rax
	movq	%rax, %rdi
	call	gets
	testq	%rax, %rax
	jne	.L25
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
