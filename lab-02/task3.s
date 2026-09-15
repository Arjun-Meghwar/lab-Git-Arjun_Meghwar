.text
.globl main

main:
    li x24, 10          # loop bound
    li x26, 0x200        # base address of array a
    li x23, 0             # sum = 0 (missing before!)

    li x22, 0             # i = 0
for1:
    bge x22, x24, exitFor1
    slli x7, x22, 2        # x7 = i * 4
    add  x5, x26, x7        # x5 = &a[i]  
    sw   x22, 0(x5)         # a[i] = i
    addi x22, x22, 1
    beq  x0, x0, for1
exitFor1:

    li x22, 0             # reset i = 0 
for2:
    bge x22, x24, exitFor2
    slli x5, x22, 2        # x5 = i * 4
    add  x6, x26, x5        # x6 = &a[i]
    lw   x7, 0(x6)          # x7 = a[i]
    add  x23, x23, x7        # sum += a[i]
    addi x22, x22, 1
    beq  x0, x0, for2
exitFor2:

end:
    j end