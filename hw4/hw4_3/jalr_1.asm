// Author: Xuyi Ruan

lbi r1, 12
jalr r1, -4 // PC:2, update jump to PC:8, R7:4
nop
halt
jalr r7, 0 // PC:8, jump to R7: 4, new R7: 10
