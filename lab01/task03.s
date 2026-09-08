main:
    li x1, 5 #   int a = 5;
    li x2, 0 # 2 int b = 0 + 0;
    addi x1,x2,32 #3 a = b + 32;

    add x3, x1,x2 # (a + b)
    addi x4, x3, -5 # 4 int d = (a + b)- 5;

    sub x5, x1, x4 # (a- d)
    sub x6, x2, x1 # (b- a)

    add x7, x5, x6 # ((a- d) + (b- a))
    add x8, x7, x4 # 5 int e = (((a- d) + (b- a)) + d);
    
    add x9, x8, x4
    add x10, x1, x2
    add x11, x9, x10 # 6 e = a + b + d + e;
end:
    j end
    