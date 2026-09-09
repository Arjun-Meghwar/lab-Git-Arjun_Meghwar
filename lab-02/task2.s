.text 
.globl main 
main:   
    li x22 , 3 # b 
    li x23 , 2 # c 

    #case for which to check 
    li x5, 1 
    li x6, 2 
    li x7, 3 
    li x8, 4 

    bne x20, x5, case2  
        add x21, x22, x23 # a = b + c 
        beq x0, x0, Exit # unconditional branch to Exit
    case2:
        bne x20, x6, case3 
        sub x21, x22, x23 # a = b - c 
        beq x0, x0, Exit # unconditional branch to Exit
    case3:
        bne x20, x7, case4 
        slli x21, x22, 1 # a = b << 1 ==>  a = b * 2  
        beq x0, x0, Exit # unconditional branch to Exit
    case4:
        bne x20, x8, default 
        srli x21, x22, 1 # a = b >> 1 ==>  a = b / 2
        beq x0, x0, Exit # unconditional branch to Exit
    default: 
        li x21, 0 # a = 0
Exit:
    j Exit