.text 
.globl main

main: 
    li x10, 0x200 
    li x5, 5 
    li x6, 2
    li x7, 6 
    li x28, 0 
    li x29, 8 

    sw x5, 0(x10) 
    sw x6, 4(x10) 
    sw x7, 8(x10) 
    sw x28, 12(x10) 
    sw x29, 16(x10) 
    

    li x11, 5 
    jal x1, bubble
    j end 

    bubble: 
        
        beq x10, x0,  exitBubble 
        beq x11, x0,  exitBubble 

        li x5, 0 # i = 0 (now just counts passes)
        outerFor :bge x5, x11, exitBubble
        # every pass starts at the front of the array
        lw x28, 0(x10)   # carried value = arr[0]      (CHANGED)

        # Starting Inner For Loop 
        li x6, 0 # j = 0                               

        innerFor :bge x6, x11, exitInnerFor
            # for arr[j] 
            slli x29, x6, 2  
            add x29, x10, x29 
            lw x29, 0(x29) 
            # Swapping if carried > arr[j] 
            bgt x28, x29, swap 
            increement: 
                slli x29, x6, 2  
                add x29, x10, x29 
                lw x28, 0(x29) 
                addi x6, x6, 1 
                j innerFor

            swap: 
                addi x7, x28, 0 # backup of carried value 
                # getting the address of arr[j-1]
                addi x6, x6, -1   
                slli x28, x6, 2  
                add x28, x10, x28
                sw x29, 0(x28) 
                # getting the address of arr[j]  
                addi x6, x6, 1  
                slli x29, x6, 2  
                add x29, x10, x29 
                sw x7, 0(x29) 
                j increement 
            

        exitInnerFor:
            addi x5,x5, 1 
            j outerFor 
        
        exitBubble:
            jalr x0, 0(x1) 

end: 
 j end