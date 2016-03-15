// Author: Xuyi Ruan

// check Jalr follows by jal.

Nop
JAL 6 // PC:2, R7: 4, jump to PC = 10
Nop // PC:4
Nop
Halt
Nop // PC:10
JALR r7, 0 // PC:12 JUMP BACK TO R7:4, rewrite R7: 14
JAL 2
Nop
Nop
Nop
Halt
