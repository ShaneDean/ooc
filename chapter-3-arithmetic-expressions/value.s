	.file	"value.c"
	.globl	Add
	.data
	.align 8
	.type	Add, @object
	.size	Add, 8
Add:
	.quad	_Add
	.globl	Sub
	.align 8
	.type	Sub, @object
	.size	Sub, 8
Sub:
	.quad	_Sub
	.globl	Minus
	.align 8
	.type	Minus, @object
	.size	Minus, 8
Minus:
	.quad	_Minus
	.globl	Value
	.align 8
	.type	Value, @object
	.size	Value, 8
Value:
	.quad	_Value
	.globl	Mult
	.align 8
	.type	Mult, @object
	.size	Mult, 8
Mult:
	.quad	_Mult
	.globl	Div
	.align 8
	.type	Div, @object
	.size	Div, 8
Div:
	.quad	_Div
	.section	.rodata
.LC0:
	.string	"value.c"
	.align 8
.LC1:
	.string	"type && ((struct Type *)type)->new"
	.text
	.globl	new
	.type	new, @function
new:
.LFB2:
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
	cmpq	$0, -216(%rbp)
	je	.L3
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L4
.L3:
	movl	$__PRETTY_FUNCTION__.2723, %ecx
	movl	$20, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L4:
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-184(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	new, .-new
	.section	.rodata
	.align 8
.LC2:
	.string	"tree && (struct Type **)tree && (*(struct Type **)tree)->delete"
	.text
	.globl	delete
	.type	delete, @function
delete:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	cmpq	$0, -8(%rbp)
	je	.L7
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L8
.L7:
	movl	$__PRETTY_FUNCTION__.2727, %ecx
	movl	$31, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	delete, .-delete
	.section	.rodata
	.align 8
.LC3:
	.string	"tree && *(struct Type **)tree && (*(struct Type **)tree)->exec"
	.text
	.type	exec, @function
exec:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L11
.L10:
	movl	$__PRETTY_FUNCTION__.2731, %ecx
	movl	$38, %edx
	movl	$.LC0, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	exec, .-exec
	.section	.rodata
.LC4:
	.string	"\t %g \n"
	.text
	.globl	process
	.type	process, @function
process:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	exec
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	process, .-process
	.section	.rodata
.LC5:
	.string	"node"
	.text
	.type	mkVal, @function
mkVal:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$__PRETTY_FUNCTION__.2742, %ecx
	movl	$58, %edx
	movl	$.LC0, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L15:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jnb	.L16
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L17
.L16:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	%rdx, %rax
	leaq	8(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L17:
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mkVal, .-mkVal
	.section	.rodata
.LC6:
	.string	" %g "
	.text
	.type	doVal, @function
doVal:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	doVal, .-doVal
	.type	mkUn, @function
mkUn:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L21
	movl	$__PRETTY_FUNCTION__.2753, %ecx
	movl	$77, %edx
	movl	$.LC0, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L21:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L22
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	%rdx, %rax
	leaq	8(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L23:
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mkUn, .-mkUn
	.type	doMinus, @function
doMinus:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	exec
	movsd	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	doMinus, .-doMinus
	.type	freeUn, @function
freeUn:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	delete
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	freeUn, .-freeUn
	.type	mkBin, @function
mkBin:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$24, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L29
	movl	$__PRETTY_FUNCTION__.2768, %ecx
	movl	$103, %edx
	movl	$.LC0, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L29:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L30
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L31
.L30:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	%rdx, %rax
	leaq	8(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L31:
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jnb	.L32
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L33
.L32:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	%rdx, %rax
	leaq	8(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L33:
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mkBin, .-mkBin
	.type	doAdd, @function
doAdd:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	exec
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	exec
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	doAdd, .-doAdd
	.type	doSub, @function
doSub:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	exec
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	exec
	movsd	-16(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	doSub, .-doSub
	.type	doMult, @function
doMult:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	exec
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	exec
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	doMult, .-doMult
	.section	.rodata
.LC9:
	.string	"division by zero"
	.text
	.type	doDiv, @function
doDiv:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	exec
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	exec
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	xorpd	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jp	.L42
	xorpd	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jne	.L42
	movl	$.LC9, %edi
	movl	$0, %eax
	call	error
.L42:
	movsd	-8(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	doDiv, .-doDiv
	.type	freeBin, @function
freeBin:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	delete
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	delete
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	freeBin, .-freeBin
	.data
	.align 16
	.type	_Add, @object
	.size	_Add, 24
_Add:
	.quad	mkBin
	.quad	doAdd
	.quad	freeBin
	.align 16
	.type	_Sub, @object
	.size	_Sub, 24
_Sub:
	.quad	mkBin
	.quad	doSub
	.quad	freeBin
	.align 16
	.type	_Mult, @object
	.size	_Mult, 24
_Mult:
	.quad	mkBin
	.quad	doMult
	.quad	freeBin
	.align 16
	.type	_Div, @object
	.size	_Div, 24
_Div:
	.quad	mkBin
	.quad	doDiv
	.quad	freeBin
	.align 16
	.type	_Minus, @object
	.size	_Minus, 24
_Minus:
	.quad	mkUn
	.quad	doMinus
	.quad	freeUn
	.align 16
	.type	_Value, @object
	.size	_Value, 24
_Value:
	.quad	mkVal
	.quad	doVal
	.quad	free
	.section	.rodata
	.type	__PRETTY_FUNCTION__.2723, @object
	.size	__PRETTY_FUNCTION__.2723, 4
__PRETTY_FUNCTION__.2723:
	.string	"new"
	.type	__PRETTY_FUNCTION__.2727, @object
	.size	__PRETTY_FUNCTION__.2727, 7
__PRETTY_FUNCTION__.2727:
	.string	"delete"
	.type	__PRETTY_FUNCTION__.2731, @object
	.size	__PRETTY_FUNCTION__.2731, 5
__PRETTY_FUNCTION__.2731:
	.string	"exec"
	.type	__PRETTY_FUNCTION__.2742, @object
	.size	__PRETTY_FUNCTION__.2742, 6
__PRETTY_FUNCTION__.2742:
	.string	"mkVal"
	.type	__PRETTY_FUNCTION__.2753, @object
	.size	__PRETTY_FUNCTION__.2753, 5
__PRETTY_FUNCTION__.2753:
	.string	"mkUn"
	.type	__PRETTY_FUNCTION__.2768, @object
	.size	__PRETTY_FUNCTION__.2768, 6
__PRETTY_FUNCTION__.2768:
	.string	"mkBin"
	.align 16
.LC7:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
