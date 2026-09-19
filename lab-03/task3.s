.text 
.globl main
main:

    # Setting Initial Data
    li x28, 5 
    li x29, 10 
   
    addi sp, sp, -8 
    sw x28, 4(sp)
    sw x29, 0(sp) 

    add x10, sp, x0 
    li x11, 0 # swapping 0-index & 1-index 
    
    jal x1, swap  # calling swap 
    j end # exit the main procedure  
    swap: 
        
       

        slli x5, x11, 2 
        add x5, x10, x5 
        lw x5, 0(x5) # kth eleement 

        
        addi x6, x11, 1 # for k(x11) + 1 
        slli x6, x6, 2  # 4 * (k + 1) 
        add x6, x10, x6 # address of (k+1)th element = baseAddress + 4 * (k + 1) 
        lw x7, 0(x6) # loading (k+1)th index original value for later assignment
        sw x5, 0(x6) # storing kth on k+1 th ele 

        # reutilizing the x5 temporay register 
        slli x5, x11, 2 # k * 4 
        add x5, x10, x5 # address  of kth element = baseAddress + k * 4 
        sw x7, 0(x5) # storing x7(original value of (k+1)th index) at address  of kth element


        jalr x0, 0(x1) 
    addi sp, sp , 8 # releasing array from stack 

end:
 j end





    

        




                
        




