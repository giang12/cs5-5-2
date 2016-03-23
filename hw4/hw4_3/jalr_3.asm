// Author: Xuyi Ruan

// two jarl opeartion

nop
lbi r7, 0
nop
nop
jalr r7, 10 // PC:8 jump to PC:10, R7= 10
jalr r7, 2 // PC:10 jump to PC:12, R7 = 12
halt // PC:12
