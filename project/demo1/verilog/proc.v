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

    wire [15:0] pc, pc_plus_two;
    wire MemEn, MemWr;
    wire Exception;
    wire [2:0] RegDataSrc;
    wire [2:0] ALUSrc1, ALUSrc2;
    wire [2:0] Op;
    wire branch, jump;
    wire Cin, invA, invB, sign, dump;
    wire [15:0] read_data_1, read_data_2;
    wire [15:0] imm_5_ext, imm_8_ext, imm_11_ext;
    wire [15:0] next_pc;
    wire [15:0] Out, set;
    wire [15:0] mem_data_out; 
    wire [15:0] write_data;
    wire [15:0] instr;
  
    fetch fetch0(   .instr(instr), //TODO get
                    .pcCurrent(pc), 
                    .pcPlusTwo(pc_plus_two), 
                    .pcNext(next_pc), 
                    .clk(clk), 
                    .rst(rst), 
                    .dump(dump) // TODO get
              );
    
    decode decode0 (  // control mod
                    .RegDataSrc(RegDataSrc), 
                    .ALUSrc1(ALUSrc1), 
                    .ALUSrc2(AluSrc2), 
                    .Op(Op), 
                    .MemEn(MemEn), 
                    .MemWr(MemWr), 
                    .Branch(branch), 
                    .Jump(jump), 
                    .Exception(Exception), 
                    .Cin(Cin), 
                    .invA(invA), 
                    .invB(invB), 
                    .sign(sign), 
                    .dump(dump),
                    .instr(instr), //TODO get
                    // register file 
                    .read1data(read_data_1), 
                    .read2data(read_data_2), 
                    .writedata(write_data),
                    // ext module
                    .instrEightExt(imm_8_ext), 
                    .instrElevenExt(imm_11_ext), 
                    .instrFiveExt(imm_5_ext)
                );        

    execution exec (
                    // Outputs
                    .next_pc(next_pc), 
                    .Out(Out), 
                    .set(set), 
                    // Inputs
                    .instr(instr), //TODO get
                    .pc_plus_two(pc_plus_two), 
                    .pc(pc), 
                    .read_data_1(read_data_1), 
                    .read_data_2(read_data_2), 
                    .imm_5_ext(imm_5_ext), 
                    .imm_8_ext(imm_8_ext), 
                    .imm_11_ext(imm_11_ext), 
                    .ALUSrc1(ALUSrc1), 
                    .ALUSrc2(ALUSrc2), 
                    .Op(Op), 
                    .Cin(Cin), 
                    .invA(invA), 
                    .invB(invB), 
                    .sign(sign), 
                    .jump(jump), 
                    .branch(branch)
                );


    memory memory0( .readData(mem_data_out), 
                    .aluResult(Out), 
                    .writeData(read_data_2), 
                    .MemEn(MemEn), 
                    .MemWr(MemWr), 
                    .halt(dump), //TODO ???
                    .clk(clk), 
                    .rst(rst)
                );

    writeback wb(   .write_data(write_data), 
                    .RegDataSrc(RegDataSrc), 
                    .mem_data_out(mem_data_out), 
                    .alu_out(Out), 
                    .imm_8_ext(imm_8_ext), 
                    .pc_plus_two(pc_plus_two), 
                    .cond_set(set)
                 );

endmodule // proc
// DUMMY LINE FOR REV CONTROL :0:
