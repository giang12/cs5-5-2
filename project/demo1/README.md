# Demo1 single-cycle non pipline processor (16bit)


## Author: 
[Xuyi Ruan](https://github.com/ruanxuyi)  
[Yudong Sun](https://github.com/Suncuss)


## Description

To start, you should do a single-cycle, non-pipelined implementation. Figure 4.24 on page 271 is a good place to start.  
For this stage, you will use the Single cycle perfect memory. Since you will need to fetch instructions as well as read or write data in the cycle, use two memories -- one for instruction memory and one for data.  
Your design should be running the full WISC-SP13 instruction set, except for the extra-credit instructions. It should use the single-cycle memory model. You should run vcheck and your files must all pass vcheck.  
In the demo you will run a set of programs on your processor using the wsrun.pl script (check the verification and simulation page for more info), show that your processor works on the test programs (full list in Test Programs page). You should run the tests under the following three categories:  
1. Simple tests  
2. Complex tests  
3. Random tests for demo1  
    1. rand_simple  
    2. rand_complex  
    3. rand_ctrl  
    4. rand_mem  


## Design Stages:

### Instruction Fetch
1. PC regsiter(16bit)  - `reg_16bit.v`  
2. instruction memory - `memory2c.v`  
3. cla adder for PC - `cla_16bit.v`  

### Instrcution Decode
1. control unit - `control.v`  
2. 16bit x8 register file (no-bypassing function) - `rf.v`  
3. extension modules x3 - `ext_mod8_16.v`, `ext_mod11_16.v`, `ext_mod5_16.v`  

### Execution
1. alu module x3 - `alu.v`  
2. condition set module - `cond_set.v`  
3. pc control module - `pc_ctr.v`  
4. cla adder x 3 - `cla_16bit.v`  

### Memory
1. data memory - `memory2c.v` 
 
### WriteBack
1. 8to1 mux - `mux8_1_16bit.v`  


[Design Schedmatic](demo1_schematic.pdf) 



## Issues: 

1. area too big: maybe less cla adder in execution?? change some clas to fulladder??   
2. timing slack violated: cla has serve slack time, change clas to fulladder will possible imporve slack timming.   



## References: 
[Synthesis Page](http://pages.cs.wisc.edu/~karu/courses/cs552/spring2016//wiki/index.php/Synthesis/Synthesis)
