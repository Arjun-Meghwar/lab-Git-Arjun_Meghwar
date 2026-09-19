
.text 
.globl main 

main:
    
    addi x10, x0, 12  # (a0) x10 = 12 
    addi x11, x0, 12  # (a1) x11 = 12 
    jal x1, sum       # jump to label sum while storing the address of next line/instruction in x1 
    addi x11, x10, 0  # x11 = x10(return value) for ecall to print 
    li x10, 1         # setting x10 = 1 for ecall to print 
    ecall             # print the value in x11 as the x10 is 1 
    j exit            # jump to exit 
    sum: 
        add x10, x11, x10  # x10(a0) = x10(a0) + x11(a1) => a + b  
        jalr x0, 0(x1)     # jump back to address in x1(after jal) while storing result in x10(a0) and no function call in sum, x0 
    exit: 
        j end 
end: 
    j end 