.text 
.globl main 
main:   
    # assigning values to registers 
    li x19, 4  # f 
    li x20, 2  # g 
    li x21, 3  # h 
    li x22, 1  # i 
    li x23, 1  # j 
    
    bne x22, x23, Else  #// if i != j, branch to Else 
    add x19, x20, x21 
    beq x0, x0, Exit # // unconditional branch to Exit
    
Else:
    sub x19, x20, x21

Exit:
    j Exit