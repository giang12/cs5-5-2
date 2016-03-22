
# 6.  Demo #2.0 - Pipelined design with Perfect Memory (30% of project grade)

## due: 12-Apr

## Description

At this point, the pipelined version of your design needs to be running correctly, but **no optimizations** are needed yet.
Correctly means that it must detect and do the right thing on pipeline hazards (e.g., stall). You will still use the
**single-cycle memory** model. We will follow similar protocol as demo1. I will run your tests and ask teams with any
failures to signup for a demo with me.  

In this demo also, you must also synthesize your processor and submit the results of synthesis, including the area and
timing reports. If there are any synthesis errors you will get ZERO for the entire demo1.  

We recommend that you **write at least two tests additional hand tests** to test pipelining. Writing more will help simplify
debugging. If you write additional tests, include them in `verification/mytests/`.  

You must **create and submit a document** which should give an explanation of the behavior of your processor for the
`perf-test-dep-ldst.asm` test. Please use the following format:  


| Cycle | Instruction Retired | Reason |
|:-----:|:-------------------:|:------:|
|1| | |
|2| | |
|etc| | |


The instruction retired would either be one of the instructions from the test program or a "NOP" if dependencies
necessitate any stall cycles. The reason column would give an explanation of why a stall was needed in that instance.
Please include this information in a pdf file titled `instruction_timeline.pdf`.  

## Plan

1. pipline stage registers (ID/EX, IF/ID etc. pg 289)  
2. control portions of the pipline registers (store and propegate control signal with insturciton pg 303, 304)  
3. forwarding unit (control forwarding logic, forwarding(eliminate stalling) solve data harzard?? pg 311 & 312)   
4. hazard detection unit (structure, control harzard?? pg 316)   
5. branch not taken???? pg 318   

