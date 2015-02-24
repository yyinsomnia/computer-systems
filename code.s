	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sum
	.align	4, 0x90
_sum:                                   ## @sum
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	addl	-8(%rbp), %esi
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	_accum(%rip), %edi
	addl	%esi, %edi
	movl	%edi, _accum(%rip)
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_accum                  ## @accum
.zerofill __DATA,__common,_accum,4,2

.subsections_via_symbols
