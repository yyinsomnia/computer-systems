	.section	__TEXT,__text,regular,pure_instructions
	.globl	_rSum
	.align	4, 0x90
_rSum:                                  ## @rSum
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -8(%ebp)
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jg	LBB0_2
## BB#1:
	movl	$0, -4(%ebp)
	jmp	LBB0_3
LBB0_2:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	-8(%ebp), %ecx
	addl	$4, %ecx
	movl	-12(%ebp), %edx
	subl	$1, %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	calll	_rSum
	movl	-16(%ebp), %ecx         ## 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -4(%ebp)
LBB0_3:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	retl


.subsections_via_symbols
