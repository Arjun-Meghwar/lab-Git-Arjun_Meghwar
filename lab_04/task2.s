.text 
.globl main 
main:
    
    li x10, 4
    jal x1, ntri  
    addi x11, x10,0  
    li x10, 1 
    ecall 
    j end

    ntri:
        
        addi sp, sp, -8
        sw x10, 4(sp) #
        sw x1,  0(sp) 

       
        li x7, 1 
        bgt x10, x7, L1
        addi x10, x0, 1 # returning 1
        addi sp, sp, 8  # dealocating stack for summation  after jal 
        jalr x0, 0(x1) # jump after jal x1, fact 

    L1: 
        addi x10, x10, -1 
        jal x1, ntri  # saving the next line address in x1 

        addi x6,  x10, 0 # saving return value 
        lw x10, 4(sp) 
        lw x1, 0(sp) 
        addi sp, sp, 8 

        add x10, x6, x10 
        
        jalr x0, 0(x1) # jumping to line 23  
end: 
    j end
        