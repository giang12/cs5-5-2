// jal test for negative value
// expect PC = 2
jal 4
halt
nop
lbi r1, 0xaa
jal -8

