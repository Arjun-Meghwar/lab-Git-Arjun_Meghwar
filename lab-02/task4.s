
.text 
.globl main
main:

    li x7, 0 # i = 0 
    li x28, 10 
    outerFor:
        bge x7, x5, endOuterFor  # if (i >= a ) done with outer 
        li x29, 0  # j = 0 
        innerLoop:
            bge  x29, x6, endInnerFor  # if (j >= b) then done with inner
            slli x23, x29, 4            # x23 = j*16
            add  x24, x10, x23          # x24 = &D[4*j]
            add  x25, x7, x29           # x25 = i+j
            sw   x25, 0(x24)            # D[4*j]= i+ j
            addi x29, x29, 1            # j++
            beq x0, x0, innerLoop
        endInnerFor:
            addi x7, x7, 1 # i++
            beq x0,x0, outerFor
    endOuterFor:
        j endOuterFor 