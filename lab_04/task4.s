
# Task4:=> Sum of Squares
# Computes 1^2 + 2^2 + ... + n^2   (n = 5  ->  55)


.text
.globl main

main:
    li   sp, 0x400            
    li   s0, 0x200            
    li   a0, 5               
    jal  ra, sum_squares     

    sw   a0, 0(s0)    

end:
    j    end

sum_squares:
    addi sp, sp, -16
    sw   ra, 12(sp)
    sw   s0, 8(sp)
    sw   s1, 4(sp)
    sw   s2, 0(sp)

    mv   s0, a0               
    li   s1, 0               
    li   s2, 1                

loop:
    bgt  s2, s0, done         
    mv   a0, s2
    jal  ra, square          
    add  s1, s1, a0           
    addi s2, s2, 1            # i++
    j    loop

done:
    mv   a0, s1               # returning sum

    lw   s2, 0(sp)
    lw   s1, 4(sp)
    lw   s0, 8(sp)
    lw   ra, 12(sp)
    addi sp, sp, 16
    jr   ra


square:
    mv   t0, a0               # t0 = x
    mv   t2, a0               # t2 = counter
    li   t1, 0                # t1 = result
sq_loop:
    beq  t2, x0, sq_done
    add  t1, t1, t0           # result += x
    addi t2, t2, -1
    j    sq_loop
sq_done:
    mv   a0, t1
    jr   ra