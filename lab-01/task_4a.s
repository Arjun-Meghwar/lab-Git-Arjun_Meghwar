.text 
.globl main 
main:
    li x10 ,  0x78786464
    li x11 ,  0xA8A81919

    li x5, 0x100
    sw x10, 0(x5) 
    
    li x6, 0x1F0 
    sw x11, 0(x6) 

    li x7 , 0x100 
    lhu x12, 0(x7) # loading 2 bytes from 0x100 into x12

    li x8 , 0x1F0
    lh x13, 0(x8) # loading 2 bytes from 0x1F0 into x13

    li x9 , 0x1F0
    lb x14, 0(x9) # loading 1 byte 
end:
    j  end 