# HW2

### [HW description](http://pages.cs.wisc.edu/~karu/courses/cs552/spring2016//wiki/index.php/Main/HW2)

## Author: 
[Xuyi Ruan](https://github.com/ruanxuyi)  
[Yudong Sun](https://github.com/Suncuss)


## Problems:

### Problem 1 (barrel shifter)

16-bit barrel shifter  


| Opcode    | Operation |
|:--------:|:----------:|
|00|    rotate left|
|01|    shift left
|10|    shift right arithmetic
|11|    shift right logical


**Inputs:**   
`[15:0]In` - 16 bit input operand value to be shifted  
`[3:0]Cnt` - 4 bit amount to shift (number of bit positions to shift)  
`[1:0]Op` - shift type, see encoding in table below

**Output:**   
`[15:0]Out` - 16 bit output operand  

[Design Schedmatic](schematic-1.pdf)  

### Problem 2 (CLA Adder)
16-bit ALU with carry look-ahead adder (CLA) in the design  


|Opcode |Function   |Result|
|:--------:|:--------:|:---:|
|000|   rll |rotate left
|001|   sll |shift left
|010|  sra| shift right arithmetic
|011|  srl|shift right logical
|100|   ADD|    A+B
|101|   OR| A OR B
|110|   XOR|    A XOR B
|111|   AND|    A AND B

**Inputs**  
`A[15:0], B[15:0]` - Data input lines A and B (16 bits each.)  
`Cin` - A carry-in for the LSB of the adder.   
`Op(2:0)` - The OP code (3 bits.) The OP code determines the operation to be performed. The opcodes are shown in the Table above.   
`invA` - An invert-A input (active high) that causes the A input to be inverted before the operation is performed.   
`invB` - An invert-B input (active high) that causes the B input to be inverted before the operation is performed.   
`sign` - A signed-or-unsigned input (active high for signed) that indicates whether signed or unsigned arithmetic to be performed for ADD function on the data lines. (This affects the Ofl output.)   

**Outputs**  
`Out(15:0)` - Data out (16 bits.)   
`Ofl` - (1 bit) This indicates high if an overflow occurred.   
`Zero` - (1 bit) This indicates that the result is exactly zero.   

[Design Schedmatic](schematic-2.pdf)  


## Issues: 
1. 1-bit full adder has glitch. Saw follow notes from hw1 footer.   


Design note: You may find that your designs for these problems can produce "glitches" -- short pulses on a wire when no transition was expected. This is OK as long as the signal quickly returns to its correct value and no glitch can be clocked into a latch. You may be tempted to add additional do-nothing gates in order to delay some signals to get rid of the glitch. This is not necessary in general computer design. If you are called upon to produce a truly glitch-free design, e.g. for an asynchronous "ready" strobe or for clock gating, more rigorous techniques are needed anyway.





