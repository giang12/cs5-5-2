/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module proc (/*AUTOARG*/
   // Outputs
   err, 
   // Inputs
   clk, rst
   );

   input clk;
   input rst;

   output err;

   // None of the above lines can be modified

   // OR all the err ouputs for every sub-module and assign it as this
   // err output
   
   // As desribed in the homeworks, use the err signal to trap corner
   // cases that you think are illegal in your statemachines
   
   
   /* your code here */
    fetch fetch0(   .instr(), 
                    .pcCurrent(), 
                    .pcPlusTwo(), 
                    .pcNext(), 
                    .clk(), 
                    .rst(), 
                    .dump());

    decode decode0 (  // control mod
                    .RegDataSrc(), 
                    .ALUSrc1(), 
                    .ALUSrc2(), 
                    .Op(), 
                    .MemEn(), 
                    .MemWr(), 
                    .Branch(), 
                    .Jump(), 
                    .Exception(), 
                    .Cin(), 
                    .invA(), 
                    .invB(), 
                    .sign(), 
                    .instr(), 
                    // register file 
                    .read1data(), 
                    .read2data(), 
                    .writedata(),
                    // ext module
                    .instrEightExt(), 
                    .instrElevenExt(), 
                    .instrFiveExt()
                );

    execution exec (.next_pc(), 
                    .Out(), 
                    .set(), 
                    .instr(), 
                    .pc_plus_two(), 
                    .pc(), 
                    .read_data_1(), 
                    .read_data_2(), 
                    .imm_5_ext(), 
                    .imm8_ext(), 
                    .imm_11_ext(), 
                    .ALUSrc1(), 
                    .ALUSrc2(), 
                    .Op(), 
                    .Cin(), 
                    .invA(), 
                    .invB(), 
                    .sign(), 
                    .jump(), 
                    .branch());

    memory memory0( .readData(), 
                    .aluResult(), 
                    .writeData(), 
                    .MemEn(), 
                    .MemWr(), 
                    .halt(), 
                    .clk(), 
                    .rst());
 
    writeback wb(   .write_data(), 
                    .RegDataSrc(), 
                    .mem_data_out(), 
                    .alu_out(), 
                    .imm_8_ext(), 
                    .pc_plus_two(), 
                    .cond_set());

endmodule // proc
// DUMMY LINE FOR REV CONTROL :0:
