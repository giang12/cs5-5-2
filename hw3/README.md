# HW3

### [HW description](http://pages.cs.wisc.edu/~karu/courses/cs552/spring2016//wiki/index.php/Main/HW3)

## Author: 
[Xuyi Ruan](https://github.com/ruanxuyi)  
[Yudong Sun](https://github.com/Suncuss)


## Problems:

### Problem 1 (Register File Design)

Design 8 by 16bit register files:


[Design Schedmatic](schematic-01.pdf) 

### Problem 2 (Saturating Counter)

Description:
Design a saturating counter.

Output increment every clk cycle unitl saturation value. 
Continue to output max value until reset. 
ctr_rst at beginning high 2 cycles, then remain low.
err asserts (1'b1) when goes into illegal stats, 

global rst signal? 
global reset at the initialzation
ctr_rst is a global reset.

input: 
`clk`, `ctr_rst`, `rst` 

output: 
`[2:0] bus`
`err`

[Design Schedmatic](schematic-02.pdf) 

### Problem 3 (64bit FIFO)

design a FIFO with 4 locations each hold 64 bit data

4 entry queue size = 4
insert ignored if fifo_full
data_out = zero if fifo empty

Inputs:
`data_in_valid`,
`pop_fifo`


Outputs: 
`fifo_full`
`data_out`
`fifo_empty`
`err`

[Design Schedmatic](schematic-03.pdf) 

## Issues: 

if queue is full, when both push and pop are assert, should we pop, then push? 
or simply just pop without push. 

Please refer to the special cases discussed in the descrption.


## References: 

[Implementing a FIFO using Verilog](http://electrosofts.com/verilog/fifo.html)
[Synchronous FIFO - world of asic](http://www.asic-world.com/examples/verilog/syn_fifo.html)
