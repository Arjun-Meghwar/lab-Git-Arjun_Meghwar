.text 
.globl main 
main:
    li x5 , 0x100 # a  char array (lb) 
    li x6 , 0x200 # b  short array (lh)
    li x7 , 0x300 # c  unsigned int array (sw)

    # for i = 0 , so 
    lb x10 , 0(x5) # load a into x10;  x10 = a[0]
    lh x11 , 0(x6) # load b into x11; x11 = b[0]
    add x12 , x10 , x11  # (x12) c[0] = a[0] + b[0] in x12
    sw x12 , 0(x7)  # store c[0] = a[0] + b[0] into c[0]

    # for i = 1 , so 
    lb x10 , 1(x5) # load a into x10;  x10 = a[1]
    lh x11 , 2(x6) # load b into x11; x11 = b[1]
    add x12 , x10 , x11  # (x12) c[1] = a[1] + b[1] in x12
    sw x12 , 4(x7)  # store c[1] = a[1] + b[1] into c[1]


      # for i = 2 , so 
    lb x10 , 2(x5) # load a into x10;  x10 = a[2]
    lh x11 , 4(x6) # load b into x11; x11 = b[2]
    add x12 , x10 , x11  # (x12) c[2] = a[2] + b[2] in x12
    sw x12 , 8(x7)  # store c[2] = a[2] + b[2] into c[2]

      # for i = 3 , so 
    lb x10 , 3(x5) # load a into x10;  x10 = a[3]
    lh x11 , 8(x6) # load b into x11; x11 = b[3]
    add x12 , x10 , x11  # (x12) c[3] = a[3] + b[3] in x12
    sw x12 , 12(x7)  # store c[3] = a[3] + b[3] into c[3]



end:
    j end