.text 
.globl main 
main:

    li x20 , 5  # a 
    li x21 , 0  # b = 0 + 0 
    
    li x22 , 5 


    addi x20 , x21 , 32

    # calc  x24 = a + b in x24 
    add x24 , x20, x21

    # d 
    sub x25 , x24 ,  x22                                                                                                

    # a - d 
    sub x26 , x20 , x25 

    # b - a
    sub x27 , x21, x20 

    # (a-d) + (b-a)
    add x28 , x26 , x27

    # calc x29(e) = (a-d) + (b-a) + d in x29
    add x29 , x28 , x25 

    # d+e 
    add x30 , x25 , x29

    add x29, x24 , x30 


    

end: 
    j end 