.text 
.globl main
main:
    addi sp, sp, -8

    sw x28, 0(sp) # save x28 on stack

    jal x1, swap 

    lw x28, 0(sp) # restore x28 from stack 

    

    swap: 
        

        # slli x5, x11, 2  # k * 4 

        # add x6, x10, x5  # base address + k * 4 

        

        # lw x7, 0(x6)  # v[k] 

        # addi x28, x7, 0  # store v[k] in x28

        # addi x29, x11, 1 # k + 1 

        # slli x8, x29, 2  # (k + 1) * 4
        # add x25, x10, x8  # base address + (k + 1) * 4

        # lw x9, 0(x25)  # x9 = v[k + 1] 

        
        # sw x9, 0(x6) # store v[k + 1] in v[k]

        # sw x28, 0(x25) # store v[k] in  v[k+1] 

        # jalr x0, 0(x1)





                
        




