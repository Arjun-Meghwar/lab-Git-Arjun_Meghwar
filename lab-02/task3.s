.text 
.globl main 
main:   

    li x24, 10 # end value of i 
    li x26, 0x200  # base address of array a 

    
for1: 
    blt x22, x24, forBody   # if x22(i) < x24(10), jump to for loop
    beq x0, x0, EndFor1  
    forBody: 
        sw x22, 0(x26) # mem[0+x26] = x22(i)
        addi x22, x22, 1 
        addi x26, x26, 4 
        beq x0, x0 , for1 
EndFor1: 
    j EndFor1 