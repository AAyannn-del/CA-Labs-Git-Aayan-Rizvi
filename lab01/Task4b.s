main:
li x10, 0x100 # a
li x11, 0x200 # b
li x12, 0x300 # c

# populate array a
li x5, 1
sb x5, 0(x10)
li x5, 2
sb x5, 1(x10)
li x5, 3
sb x5, 2(x10)
li x5, 4
sb x5, 3(x10)

# populate array b
li x6, 10
sh x6, 0(x11)
li x6, 20
sh x6, 2(x11)
li x6, 30
sh x6, 4(x11)
li x6, 40
sh x6, 6(x11)

# first iteration, where i=0
lb x5 0(x10)
lh x6 0(x11)
add x7, x5, x6
sw x7, 0(x12)

# second iteration, where i =1, thus offset multipllied by 1
lb x5 1(x10)
lh x6 2(x11)
add x7, x5, x6
sw x7, 4(x12)

# third iteration, where i =2
lb x5 2(x10)
lh x6 4(x11)
add x7, x5, x6
sw x7, 8(x12)

# fourth iteration, where i = 3
lb x5 3(x10)
lh x6 6(x11)
add x7, x5, x6
sw x7, 12(x12)

end:
    j end 