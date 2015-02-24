	.section	__TEXT,__text,regular,pure_instructions
	.globl	_show_bytes
	.align	4, 0x90
_show_bytes:                            ## @show_bytes
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str(%rip), %rdi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB0_1
LBB0_4:
	leaq	L_.str1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_show_int
	.align	4, 0x90
_show_int:                              ## @show_int
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %esi
	leaq	-4(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_show_short
	.align	4, 0x90
_show_short:                            ## @show_short
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, %ax
	movl	$2, %esi
	leaq	-2(%rbp), %rcx
	movw	%ax, -2(%rbp)
	movq	%rcx, %rdi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_show_long
	.align	4, 0x90
_show_long:                             ## @show_long
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp17:
	.cfi_def_cfa_offset 16
Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$8, %esi
	leaq	-8(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_show_double
	.align	4, 0x90
_show_double:                           ## @show_double
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp22:
	.cfi_def_cfa_offset 16
Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$8, %esi
	leaq	-8(%rbp), %rax
	movsd	%xmm0, -8(%rbp)
	movq	%rax, %rdi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_show_float
	.align	4, 0x90
_show_float:                            ## @show_float
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %esi
	leaq	-4(%rbp), %rax
	movss	%xmm0, -4(%rbp)
	movq	%rax, %rdi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_show_pointer
	.align	4, 0x90
_show_pointer:                          ## @show_pointer
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp32:
	.cfi_def_cfa_offset 16
Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$8, %esi
	leaq	-8(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_test_show_bytes
	.align	4, 0x90
_test_show_bytes:                       ## @test_show_bytes
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp37:
	.cfi_def_cfa_offset 16
Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-8(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movw	%di, %cx
	movw	%cx, -10(%rbp)
	movslq	-8(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	cvtsi2ssl	-8(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	%rax, -48(%rbp)
	movl	-8(%rbp), %edi
	callq	_show_int
	movswl	-10(%rbp), %edi
	callq	_show_short
	movq	-24(%rbp), %rdi
	callq	_show_long
	movss	-28(%rbp), %xmm0
	callq	_show_float
	movsd	-40(%rbp), %xmm0
	callq	_show_double
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	_show_pointer
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movl	$0, -4(%rbp)
	movl	$-2023406815, -8(%rbp)  ## imm = 0xFFFFFFFF87654321
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	_test_show_bytes
	movl	$0, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" %.2x"

L_.str1:                                ## @.str1
	.asciz	"\n"


.subsections_via_symbols
