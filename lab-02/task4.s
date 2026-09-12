
.text 
.globl main: 
main:

    li x7, 0 # i = 0 
    li x28, 10 



    bge x7, x5, endOuterFor
        li x29, 0  # j = 0 
        innerLoop:
        bge x29, x6, endInnerFor
            # inner loop body
            slli x23, x29, 2 # x23 = j * 4
            add x24, x10, x23 # x24 = base address + j * 4 
            slli x24, x24, 2 
            lw x25, 0(x24) # x25 = D[4*j]

            # i + j 
            add x26, x7, x29 # x26 = i + j
            sw x26, 0(x25) 
            
            addi x29, x29, 1 # j++
            beq x0, x0, innerLoop
        endInnerFor:
        addi x7, x7, 1 # i++