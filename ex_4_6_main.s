	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	leal	L_.str-L0$pb(%eax), %eax
	movl	%eax, -4(%ebp)          ## 4-byte Spill
	calll	_pushtest
	movl	-4(%ebp), %ecx          ## 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	_printf
	movl	$0, %ecx
	movl	%eax, -8(%ebp)          ## 4-byte Spill
	movl	%ecx, %eax
	addl	$24, %esp
	popl	%ebp
	retl

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%x\n"


.subsections_via_symbols
