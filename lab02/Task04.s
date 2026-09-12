main:
    # x5 =a
    # x6 =b
    # x7 =i
    #x29 =j
    li x7, 0
    li x29, 0
    Loop1:
        bge x7, x5, Loop1end
        Loop2:
            bge x29, x6, Loop2end
            slli x30, x29, 4
            add x30, x10, x30

            add x31, x7, x29
            sw x31, 0(x30)

            addi x29, x29, 1
            j Loop2
        Loop2end:
        addi x7,x7, 1
        j Loop1
    Loop1end: