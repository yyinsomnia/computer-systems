AbsSum:
    push1 %ebp
    rrmovl %esp,%ebp
    mrmovl 8(%ebp),%ecx
    mrmovl 12(%ebp),%edx
    xrol   %eax,%eax
    andl   %edx,%edx
    je     End
Loop:
    mrmovl (%ecx),%esi
    addl   %esi,%eax
    rrmovl %eax,%ebx
    subl   %esi,%ebx
    andl   %esi,%esi
    cmovl  %ebx,%eax
    irmovl $4,%ebx
    addl   %ebx,%ecx
    irmovl $-1,%ebx
    addl   %ebx,%edx
    jne    Loop
End:
    rrmovl %ebp,%esp
    popl   %ebp
    ret
