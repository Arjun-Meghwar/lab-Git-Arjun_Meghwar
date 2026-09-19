.text 
.globl main

main: 

    j x1, strcpy
    j end 

    strcpy: 
        addi sp, sp, -8 
        sd x19, 0(sp) 
        li x19, 0 # i 

        while: 
        # get y[i] 
        add x5, x11, x19 # address of y[i] 
        add x6, x10, x19 # address of x[i] 
        lb x7, 0(x5) # loading value at address of y[i]-> (x5) 
        sb x7, 0(x6) # store y[i] at address of x[i] 
    
        beq x7, x0, exitStrCpy  # if y[i] == '\0' 

        addi x19, x19, 1 # i++ 
        beq x0, x0, while

        exitStrCpy: 
            ld x19, 0(sp) 
            addi sp, sp, 8 
            jalr x0, 0(x1)  

end: 
    j end 