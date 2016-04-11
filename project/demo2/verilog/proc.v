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
    wire [15:0] btr_out;
    wire [15:0] next_pc;
    wire [15:0] Out, set;
    wire [15:0] mem_data_out; 
    wire [15:0] write_data;
    wire [15:0] instr;
    wire [1:0] RegDst;
    wire RegWriteEN_in, RegWriteEN_out;
 
    fetch fetch0(   .instr(instr),
                    .pcCurrent(pc), 
                    .pcPlusTwo(pc_plus_two), 
                    .pcNext(next_pc), 
                    .clk(clk), 
                    .rst(rst), 
                    .dump(dump), 
                    .exception(Exception)// TODO: make sure expection output 0 in the very first clk cycle.
              );
   
     
    // TODO: connect wires
    regIFID regIFID0 (  
                    .instr_out(), 
                    .pcPlusTwo_out(), 
                    .pcCurrent_out(), 
                    .clk(), 
                    .en(), 
                    .rst(), 
                    .pcPlusTwo_in(), 
                    .pcCurrent_in(), 
                    .instr_in()
                );

    decode decode0 (  // control mod
                    .RegDst(RegDst),
                    .RegDataSrc(RegDataSrc), 
                    .ALUSrc1(ALUSrc1), 
                    .ALUSrc2(ALUSrc2), 
                    .Op(Op), 
                    .MemEn(MemEn), 
                    .MemWr(MemWr), 
                    .Branch(branch), 
                    .Jump(jump), 
                    .Exception(Exception), 
                    .clk(clk),
                    .rst(rst),
                    .Cin(Cin), 
                    .invA(invA), 
                    .invB(invB), 
                    .sign(sign), 
                    .dump(dump),
                    .instr(instr), // get
                    // register file 
                    .read1data(read_data_1), 
                    .read2data(read_data_2), 
                    .writedata(write_data),
                    // ext module
                    .instrEightExt(imm_8_ext), 
                    .instrElevenExt(imm_11_ext), 
                    .instrFiveExt(imm_5_ext),
                    .btr_out(btr_out),
                    // TODO: 
                    .RegWriteEN_in(RegWriteEN_in), //TODO: assign from output of M/WB stage
                    .RegWriteEN_out(RegWriteEN_out) //TODO: assign to input of ID/EX stage
                );        

    // TODO: connect wire    
    regIDEX regIDEX0 
                ( 
                // ********** data outputs ********
                    .instr_out(), 
                    .pc_plus_two_out(), 
                    .read_data_1_out(), 
                    .read_data_2_out(), 
                    .imm_5_ext_out(), 
                    .imm_8_ext_out(), 
                    .btr_out_out(), 
                    // regsiter control
                    .clk(), 
                    .en(), 
                    .rst(),
                    // ********* data inputs *******
                    .instr_in(),
                    .pcPlusTwo_in(),
                    .read1data_in(), 
                    .read2data_in(),
                    .instrFiveExt_in(),
                    .instrEightExt_in(),
                    .btr_out_in(),
                    // *********** control outputs *******
                    // EX
                    .Op_out(), 
                    .ALUSrc1_out(), 
                    .ALUSrc2_out(),
                    .Cin_out(), 
                    .invA_out(), 
                    .invB_out(), 
                    .sign_out(), 
                    .jump_out(), 
                    .branch_out(),
                    // M
                    .MemEn_out(), 
                    .MemWr_out(), 
                    .dump_out(),
                    // WB
                    .RegDst_out(),
                    .RegDataSrc_out(),
                    .RegWriteEN_out(),
                    // *********** control inputs *******
                    // EX
                    .Op_in(), 
                    .ALUSrc1_in(), 
                    .ALUSrc2_in(), 
                    .Cin_in(), 
                    .invA_in(), 
                    .invB_in(), 
                    .sign_in(), 
                    .Jump_in(), 
                    .Branch_in(),
                    // M
                    .MemEn_in(), 
                    .MemWr_in(), 
                    .dump_in(),
                    // WB
                    .RegDst_in(),
                    .RegDataSrc_in(),
                    .RegWriteEN_in()
                );

    execution exec (
                    // Outputs
                    .next_pc(next_pc), 
                    .Out(Out), 
                    .set(set), 
                    // Inputs
                    .instr(instr),
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

    // TODO: connect wire
    regEXMem regEXMem0(
                    // data
                    .pc_plus_two_out(),
                    .imm_8_ext_out(),
                    .aluResult_out(),
                    .writeData_out(),
                    .btr_out_out(),
                    .instr_out(),
                    .set_out(),
    
                    // Control
                    .MemEn_out(), 
                    .MemWr_out(, 
                    .halt_out(),
                    .RegDst_out(),
                    .RegDataSrc_out(),
                    .RegWriteEN_out(),
    
                    // data
                    .pc_plus_two_in(),
                    .imm_8_ext_in(),
                    .Out_in(),
                    .read_data_2_in(),
                    .btr_out_in(),
                    .instr_in(),
                    .set_in(),
    
                    // control
                    .MemEn_in(), 
                    .MemWr_in(), 
                    .dump_in(),
                    .RegDst_in(),
                    .RegDataSrc_in(),
                    .RegWriteEN_in()
                );

    memory memory0( .readData(mem_data_out), 
                    .aluResult(Out), 
                    .writeData(read_data_2), 
                    .MemEn(MemEn), 
                    .MemWr(MemWr), 
                    .halt(dump),
                    .clk(clk), 
                    .rst(rst)
                );

    // TODO: connect wire
    regMemWB regMemWB0 (
                    // data
                    .instr(),
                    .mem_data_out(),
                    .alu_out(),
                    .imm_8_ext(),
                    .btr_out(),
                    .pc_plus_two(),
                    .cond_set(),
                    // control
                    .RegDst_out(),
                    .RegDataSrc_out(),
                    .RegWriteEN_out(),
                    // data
                    .instr_in(),
                    .readData_in(),
                    .aluResult_in(),
                    .imm_8_ext_in(),
                    .btr_out_in(),
                    .pc_plus_two_in(),
                    .set_in(),
                    //control
                    .RegDst_in(),
                    .RegDataSrc_in(),
                    .RegWriteEN_in()
    );

    writeback wb(   .write_data(write_data), 
                    .RegDataSrc(RegDataSrc), 
                    .mem_data_out(mem_data_out), 
                    .alu_out(Out), 
                    .imm_8_ext(imm_8_ext),
                    .btr_out(btr_out), 
                    .pc_plus_two(pc_plus_two), 
                    .cond_set(set)
                 );

endmodule // proc
// DUMMY LINE FOR REV CONTROL :0:
