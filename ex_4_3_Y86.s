.section	__TEXT,__text,regular,pure_instructions
	.globl	_rSum
	.align	4, 0x90
_rSum:                                  ## @rSum
## BB#0:
	pushl	%ebp
	rrmovl	%esp, %ebp
	irmovl  $24, %ebx
	subl	%ebx, %esp
	mrmovl	12(%ebp), %eax
	mrmovl	8(%ebp), %ecx
	rmmovl	%ecx, -8(%ebp)
	rmmovl	%eax, -12(%ebp)
	andl    %eax,%eax
	jg	LBB0_2
## BB#1:
	xorl    %eax,%eax
	rmmovl	$eax, -4(%ebp)
	jmp	LBB0_3
LBB0_2:
	mrmovl	-8(%ebp), %eax
	mrmovl	(%eax), %eax
	mrmovl	-8(%ebp), %ecx
	irmovl  $4, %ebx	
	addl	%ebx, %ecx
	mrmovl	-12(%ebp), %edx
	irmovl  $1, %ebx		## just fuck why can not use the immediately number to calculate?	
	subl	%ebx, %edx
	rmmovl	%ecx, (%esp)
	rmmovl	%edx, 4(%esp)
	rmmovl	%eax, -16(%ebp)         ## 4-byte Spill
	calll	_rSum
	mrmovl	-16(%ebp), %ecx         ## 4-byte Reload
	addl	%eax, %ecx
	rmmovl	%ecx, -4(%ebp)
LBB0_3:
	mrmovl	-4(%ebp), %eax
	irmovl  $24, %ebx	
	addl	%ebx, %esp
	popl	%ebp
	retl

