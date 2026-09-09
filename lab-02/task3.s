.text 
.globl main 
main:   

    li x24, 10 
    li x26, 0x200 

    
    blt x22, x24, for 

    for: 
        sw x, 0(x26) # 
        