.text 
.globl main
main: 

    #storing temparary values in stack to avoid overwriting them in leaf function 
    addi sp, sp, -12
    sw x18, 8(sp)  # g + h in leaf 
    sw x19, 4(sp)  # i + j in leaf 
    sw x20, 0(sp)  # f = (g + h) - (i + j) in leaf 
 
    li x10, 3   # g = 3 
    li x11, 4   # h = 4
    li x12, 2   # i = 2
    li x13, 3   # j = 3 

    jal x1, leaf_example 
    addi x11, x10, 0 
    addi x10, x0, 1 
    ecall 

    #restoring the values
    lw x18, 8(sp) 
    lw x19, 4(sp)
    lw x20, 0(sp)

    addi sp, sp, 12 # deallocating the stack space 

    leaf_example: 
    
        add x18, x10, x11
        add x19, x12, x13 
        sub x20, x18, x19 

        addi x10, x20, 0 

        jalr x0, 0(x1) 