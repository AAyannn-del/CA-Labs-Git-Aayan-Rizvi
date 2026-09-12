main:
# x x20
# a x21
# b x22
# c x23
li x22, 3
li x23, 2

li t0, 1
beq x24,t0, Case1
li t0, 2
beq x24, t0, Case2
li t0, 3
beq x24, t0, Case3
li t0, 4
beq x24, t0, Case4
j default


slli x21, x22, 1
Case1:
    add x21, x22, x23
    j Exit
Case2: 
    sub x21, x22, x23
    j Exit
Case3: 
    slli x21, x22, 1
    j Exit
Case4:
    srai x21, x22, 1
    j Exit
default:
    li x21, 0
    j Exit
Exit:
