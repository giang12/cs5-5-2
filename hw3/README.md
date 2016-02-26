# HW3

### [HW description](http://pages.cs.wisc.edu/~karu/courses/cs552/spring2016//wiki/index.php/Main/HW3)

## Author: 
[Xuyi Ruan](https://github.com/ruanxuyi)  
[Yudong Sun](https://github.com/Suncuss)


## Problems:

### Problem 1 (Register File Design)

Design 8 by 16bit register files:


### Problem 2 ()

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

### Problem 3 ()

design a FIFO hold 64 bit data
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

## Issues: 

if queue is full, when both push and pop are assert, should we pop, then push? 
or simply just pop without push. 

