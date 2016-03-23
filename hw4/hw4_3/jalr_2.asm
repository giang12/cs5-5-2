// Autho: Xuyi Ruan

// test directly jump to halt

lbi r0 6
add r0 r0 r0 // r0 = 12
jalr r0 -2 // PC:4, jump to PC:10, R7 = 6
add r0 r0 r0
halt 
nop // PC:10
halt 
