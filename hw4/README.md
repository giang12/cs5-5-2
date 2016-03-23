# HW4

### [HW description](http://pages.cs.wisc.edu/~karu/courses/cs552/spring2016//wiki/index.php/Main/HW4)

## Author: 
[Xuyi Ruan](https://github.com/ruanxuyi)  
[Yudong Sun](https://github.com/Suncuss)


## Problems:

### Problem 1 (Bypassing Register File Design)
Ehanced 8 by 16bit register files with internal bypassing function. 

Note: bypassing function is used for pipline proc make write data directily wire as readData:
1. writeSel's reg number == readSel's reg number  
2. the written data is able to be read from the readSel immedicately (data as a wire)  
3. even data path as wire from wirte to read, the data will be still wirte into register in the next posedge clk.  
4. benefit, the writeData will be able to wire to the output of the ReadData, so in the next posedge clk  
a) wirteData write into register file,   
b) at the same time, the new writeData will be able to use for futher executation through readData(wire through) at the **same next posedge clk**.   
c) without bypassing, writtten data need one more clk cycle before it can be read.  


[Design Schedmatic](schematic.pdf) 

### Problem 2 (Synthesis FIFO from HW3)

Description:

Copy all files necessary to compile your FIFO from homework 3 to the hw4_2 directory. Synthesize your FIFO.  

Synthesis will create the synth directory which will include fifo.syn.v, area report, timing report, etc. Do not delete this directory - it must be included in your submission. Make sure that in the area report no cell has an area of zero  


### Problem 3 (Unit test asm file for proc)

Develop instruction level tests for your processor.  
1. sub  
2. jal  
3. jalr  


## Issues: 

## References: 
[Synthesis Page](http://pages.cs.wisc.edu/~karu/courses/cs552/spring2016//wiki/index.php/Synthesis/Synthesis)
