.text 
.globl main 
main:
    li x10, 4 
    addi sp, sp, -8
    sw x10, 4(sp) #
    sw x1,  0(sp)
    fact:
        li x5, 1 # acc
        li x6, 0 
        
        cond:
            bgt x10, x0, while  
            addi x10, x5, 0 
            j exitFact  
        while: 
            mul x5, x5, x10 
            addi x10, x10, -1 
            j cond 
exitFact:
        add x11, x10, x0 
        addi x10, x0, 1 
        ecall     # printing answer
        
        #Restoring main values 
        lw x10, 4(sp) 
        lw x1, 0(sp) 
        #Dealocating stack 
        addi sp, sp, 8 
end:
    j end 