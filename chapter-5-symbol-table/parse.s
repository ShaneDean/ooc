	.file	"parse.c"
	.comm	Minus,8,8
	.comm	Value,8,8
	.comm	Mult,8,8
	.comm	Div,8,8
	.comm	Add,8,8
	.comm	Sub,8,8
	.comm	Var,8,8
	.comm	Assign,8,8
	.text
	.type	initNames, @function
initNames:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$names.3015, -8(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	install
	addq	$24, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	initNames, .-initNames
	.local	token
	.comm	token,4,4
	.local	number
	.comm	number,8,8
	.section	.rodata
.LC0:
	.string	"bad value : %s"
	.align 8
.LC1:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_0123456789"
.LC2:
	.string	"name to long: %-.10s..."
	.text
	.type	scan, @function
scan:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8224, %rsp
	movq	%rdi, -8216(%rbp)
	cmpq	$0, -8216(%rbp)
	je	.L5
	movq	-8216(%rbp), %rax
	movq	%rax, bp.3025(%rip)
	jmp	.L6
.L5:
	jmp	.L6
.L7:
	movq	bp.3025(%rip), %rax
	addq	$1, %rax
	movq	%rax, bp.3025(%rip)
.L6:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	bp.3025(%rip), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L7
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	bp.3025(%rip), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L8
	movq	bp.3025(%rip), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L9
.L8:
	call	__errno_location
	movl	$0, (%rax)
	movl	$110, token(%rip)
	movq	bp.3025(%rip), %rax
	movl	$bp.3025, %esi
	movq	%rax, %rdi
	call	strtod
	movsd	%xmm0, -8224(%rbp)
	movq	-8224(%rbp), %rax
	movq	%rax, number(%rip)
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$34, %eax
	jne	.L10
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	error
	jmp	.L11
.L10:
	jmp	.L11
.L9:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	bp.3025(%rip), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L12
	movq	bp.3025(%rip), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	jne	.L13
.L12:
	movq	bp.3025(%rip), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strspn
	movl	%eax, -4(%rbp)
	cmpl	$8192, -4(%rbp)
	jle	.L14
	movq	bp.3025(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	error
.L14:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	bp.3025(%rip), %rcx
	leaq	-8208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movl	-4(%rbp), %eax
	cltq
	movb	$0, -8208(%rbp,%rax)
	movq	bp.3025(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, bp.3025(%rip)
	leaq	-8208(%rbp), %rax
	movq	%rax, %rdi
	call	screen
	movl	%eax, token(%rip)
	jmp	.L11
.L13:
	movq	bp.3025(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L15
	movq	bp.3025(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, bp.3025(%rip)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	jmp	.L16
.L15:
	movl	$0, %eax
.L16:
	movl	%eax, token(%rip)
.L11:
	movl	token(%rip), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	scan, .-scan
	.section	.rodata
.LC3:
	.string	"bad factor: '%c' 0x%x"
.LC4:
	.string	"expecting ("
.LC5:
	.string	"expecting )"
	.text
	.type	factor, @function
factor:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	token(%rip), %eax
	cmpl	$99, %eax
	je	.L20
	cmpl	$99, %eax
	jg	.L21
	cmpl	$43, %eax
	je	.L22
	cmpl	$45, %eax
	je	.L23
	cmpl	$40, %eax
	je	.L24
	jmp	.L19
.L21:
	cmpl	$110, %eax
	je	.L25
	cmpl	$118, %eax
	je	.L20
	cmpl	$109, %eax
	je	.L26
	jmp	.L19
.L22:
	movl	$0, %edi
	call	scan
	call	factor
	jmp	.L27
.L23:
	movl	$0, %edi
	call	scan
	call	factor
	movq	%rax, %rdx
	movq	Minus(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	new
	jmp	.L27
.L19:
	movl	token(%rip), %edx
	movl	token(%rip), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	error
.L25:
	movq	number(%rip), %rax
	movq	Value(%rip), %rdx
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movq	%rdx, %rdi
	movl	$1, %eax
	call	new
	movq	%rax, -8(%rbp)
	jmp	.L28
.L20:
	movq	symbol(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L28
.L26:
	movq	symbol(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$0, %edi
	call	scan
	cmpl	$40, %eax
	je	.L29
	movl	$.LC4, %edi
	movl	$0, %eax
	call	error
.L29:
	movl	$0, %edi
	call	scan
	call	sum
	movq	%rax, %rdx
	movq	Math(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	new
	movq	%rax, -8(%rbp)
	movl	token(%rip), %eax
	cmpl	$41, %eax
	je	.L30
	movl	$.LC5, %edi
	movl	$0, %eax
	call	error
	jmp	.L28
.L30:
	jmp	.L28
.L24:
	movl	$0, %edi
	call	scan
	call	sum
	movq	%rax, -8(%rbp)
	movl	token(%rip), %eax
	cmpl	$41, %eax
	je	.L28
	movl	$.LC5, %edi
	movl	$0, %eax
	call	error
.L28:
	movl	$0, %edi
	call	scan
	movq	-8(%rbp), %rax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	factor, .-factor
	.type	product, @function
product:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	factor
	movq	%rax, -8(%rbp)
.L35:
	movl	token(%rip), %eax
	cmpl	$42, %eax
	je	.L33
	cmpl	$47, %eax
	je	.L34
	jmp	.L32
.L33:
	movq	Mult(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L32
.L34:
	movq	Div(%rip), %rax
	movq	%rax, -16(%rbp)
	nop
.L32:
	movl	$0, %edi
	call	scan
	call	factor
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	new
	movq	%rax, -8(%rbp)
	jmp	.L35
	.cfi_endproc
.LFE5:
	.size	product, .-product
	.type	sum, @function
sum:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	product
	movq	%rax, -8(%rbp)
.L42:
	movl	token(%rip), %eax
	cmpl	$43, %eax
	je	.L38
	cmpl	$45, %eax
	je	.L39
	jmp	.L43
.L38:
	movq	Add(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L40
.L39:
	movq	Sub(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L40
.L43:
	movq	-8(%rbp), %rax
	jmp	.L44
.L40:
	movl	$0, %edi
	call	scan
	call	product
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	new
	movq	%rax, -8(%rbp)
	jmp	.L42
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sum, .-sum
	.section	.rodata
.LC6:
	.string	"bad assignment"
.LC7:
	.string	"expecting = "
	.text
	.type	stmt, @function
stmt:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	token(%rip), %eax
	cmpl	$108, %eax
	jne	.L51
	movl	$0, %edi
	call	scan
	cmpl	$118, %eax
	je	.L48
	movl	$.LC6, %edi
	movl	$0, %eax
	call	error
.L48:
	movq	symbol(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %edi
	call	scan
	cmpl	$61, %eax
	je	.L49
	movl	$.LC7, %edi
	movl	$0, %eax
	call	error
.L49:
	movl	$0, %edi
	call	scan
	call	sum
	movq	%rax, %rdx
	movq	Assign(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	new
	jmp	.L50
.L51:
	call	sum
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	stmt, .-stmt
	.local	onError
	.comm	onError,200,32
	.section	.rodata
.LC8:
	.string	"trash after sum"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8208, %rsp
	movl	$0, -12(%rbp)
	call	initNames
	call	initConst
	call	initMath
	movl	$onError, %edi
	call	_setjmp
	testl	%eax, %eax
	je	.L53
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L54
.L53:
	jmp	.L54
.L56:
	leaq	-8208(%rbp), %rax
	movq	%rax, %rdi
	call	scan
	testl	%eax, %eax
	je	.L54
	call	stmt
	movq	%rax, -8(%rbp)
	movl	token(%rip), %eax
	testl	%eax, %eax
	je	.L55
	movl	$.LC8, %edi
	movl	$0, %eax
	call	error
.L55:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	process
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	delete
.L54:
	movq	stdin(%rip), %rdx
	leaq	-8208(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	fgets
	testq	%rax, %rax
	jne	.L56
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.globl	error
	.type	error, @function
error:
.LFB9:
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
	je	.L59
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L59:
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
.LFE9:
	.size	error, .-error
	.section	.rodata
.LC9:
	.string	"let"
	.align 32
	.type	names.3015, @object
	.size	names.3015, 48
names.3015:
	.quad	0
	.quad	.LC9
	.long	108
	.zero	4
	.quad	0
	.zero	16
	.local	bp.3025
	.comm	bp.3025,8,8
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
