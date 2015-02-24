	.section	__TEXT,__text,regular,pure_instructions
	.globl	_pushtest
	.align	4, 0x90
_pushtest:                              ## @pushtest
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	%esp, %eax
	pushl   %esp
	popl    %edx
        subl    %edx, %eax
	leave
	ret

.subsections_via_symbols
