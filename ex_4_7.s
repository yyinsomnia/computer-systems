	.section	__TEXT,__text,regular,pure_instructions
	.globl	_pushtest
	.align	4, 0x90
_pushtest:                              ## @pushtest
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
        pushl   $0x1234
	popl    %esp
	movl    %esp, %eax
	leave
	ret

.subsections_via_symbols

## return 1234 , there is sth diff with page 116:
## popl %eax = movl(%esp),%eax + addl $4,%esp 
