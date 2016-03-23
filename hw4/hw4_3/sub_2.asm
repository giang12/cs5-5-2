// subtracting a number from itself
// rs rd rt are the same
// expect 0

lbi r1, 0x66
sub r1, r1, r1
halt
