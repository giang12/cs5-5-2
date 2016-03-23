// special test jal 0
// expect normal execution
lbi r1, 0x01
jal 0
lbi r1, 0x77
halt

