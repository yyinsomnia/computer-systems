	.section	__TEXT,__text,regular,pure_instructions
	.globl	_decode2
	.align	4, 0x90
_decode2:                               ## @decode2
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	%ecx, -8(%ebp)
	movl	%eax, -12(%ebp)
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %ecx
	subl	-8(%ebp), %ecx
	xorl	%ecx, %eax
	movl	-12(%ebp), %ecx
	subl	-8(%ebp), %ecx
	shll	$15, %ecx
	sarl	$15, %ecx
	imull	%ecx, %eax
	addl	$12, %esp
	popl	%ebp
	retl


.subsections_via_symbols
