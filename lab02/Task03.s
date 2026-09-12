main:
    # i in x22
    # sum in x22
    li x5, 0x200
    li x6, 10

    li x22, 0
    loop1:
        bge x22, x6, Exit
        slli x7, x22, 2
        add x7, x5, x7
        sw x22, 0(x7)
        addi x22, x22, 1
        j loop1
    Exit:
    li x22, 0
    loop2:
        bge x22, x6, Exitk
        slli x7, x22, 2
        add x7, x5, x7
        lw x28, 0(x7)
        add x23, x23, x28
        addi x22, x22, 1
        j loop2
    Exitk: