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
    wire [2:0] RegDataSrc;
    wire [2:0] ALUSrc1, ALUSrc2;
    wire [2:0] Op;
    wire branch, jump;
    wire Cin, invA, invB, sign, dump;
    wire [15:0] read_data_1, read_data_2;
    wire [15:0] imm_5_ext, imm_8_ext, imm_11_ext;
    wire [15:0] next_pc;
    wire [15:0] btr_out; // but seems like no one is using this wire
    wire [15:0] Out, set, btr__out;
    wire [15:0] mem_data_out; 
    wire [15:0] write_data;
    wire [15:0] instr;
    wire [1:0] RegDst;
    wire RegWriteEN_in, RegWriteEN_out;
 

    wire IFIDWriteEn, pcWriteEn;
    // decode
    wire flush;
    wire [15:0] pc2decode, pcPlusTwo2decdoe, instr2decode, instrFiveExt2IDEX, instrEightExt2IDEX, instrElevenExt2IDEX ;
    wire [31:0] control_signal;
    // IDEX 
    wire [15:0] read1data2IDEX, read2data2IDEX, IDEXinstrOut, IDEX_read_data_1_out, IDEX_read_data_2_out, IDEX_imm_5_ext_out, IDEX_imm_8_ext_out, IDEX_imm_11_ext_out , IDEX_pc_plus_two_out;
    wire [1:0] IDEX_RegDst_out; 
    wire [2:0] IDEX_RegDataSrc_out;
    wire IDEX_RegWriteEN_out, IDEX_MemEn_out, IDEX_MemWr_out, IDEX_dump_out;
    
    
    // MEMWB
    wire MemWB_RegWriteEN_out;
    wire [15:0] MemWB_instr_out, MemWB_mem_data_out, MemWB_alu_out, MemWB_imm_8_ext, MemWB_btr_out, MemWB_pc_plus_two, MemWB_cond_set; 
    wire [1:0] MemWB_RegDst_out;
    

    // EXMem
    wire [15:0] EXMem_instr_out, EXMem_pc_plus_two_out, EXMem_imm_8_ext_out, EXMem_aluResult_out, EXMem_writeData_out, EXMem_btr_out_out, EXMem_set_out;
    wire EXMem_RegWriteEN_out; 
    wire EXMem_MemWr_out, EXMem_MemEn_out, EXMem_halt_out;
    wire [1:0] EXMem_RegDst_out;
    wire [2:0] EXMem_RegDataSrc_out;

    // dst_reg_num
    wire [2:0] IDEX_dst_reg_num_out, EXMem_dst_reg_num_in, EXMem_dst_reg_num_out, MemWB_dst_reg_num_in, MemWB_dst_reg_num_out;
    fetch fetch0(   // outputs
                    .instr(instr),
                    .pcCurrent(pc), 
                    .pcPlusTwo(pc_plus_two), 
                    // inputs
                    .pcNext(next_pc), 
                    .pcWriteEN(pcWriteEn),  
                    .pcSel(flush),
                    .clk(clk), 
                    .rst(rst), 
                    .dump(dump), 
                    .exception(control_signal[17])// TODO: make sure expection output 0 in the very first clk cycle.
              );
   
    
    wire [15:0] IFID_instr_in;
    wire [15:0] IDEX_instr_in;
    mux2_1_16bit IFID_instr_mux(.out(IFID_instr_in), .in0(instr), .in1(16'b0000100000000000), .sel(flush)); 
    mux2_1_16bit IDEX_instr_mux(.out(IDEX_instr_in), .in0(instr2decode), .in1(16'b0000100000000000), .sel(flush));
    // TODO: connect wires
    regIFID regIFID0 (  
                    // outputs
                    .instr_out(instr2decode), 
                    .pcPlusTwo_out(pcPlusTwo2decdoe), 
                    .pcCurrent_out(pc2decode), 
                    // inputs
                    .clk(clk), 
                    .en(IFIDWriteEn), 
                    .rst(rst), 
                    .pcPlusTwo_in(pc_plus_two), 
                    .pcCurrent_in(pc), 
                    .instr_in(IFID_instr_in)
                );
  
    wire [31:0] actual_control_signals;
    decode decode0 ( 
                .instr(instr2decode), // in
                // register files
                .clk(clk), 
                .rst(rst), 
                .read1data(read1data2IDEX), 
                .read2data(read2data2IDEX), 
                .writedata(write_data), // in
                // ext module
                .instrElevenExt(instrElevenExt2IDEX),
                .instrEightExt(instrEightExt2IDEX), 
                .instrFiveExt(instrFiveExt2IDEX),
                // 04/12 if_flush, actual control signals
                // outputs
                .actual_control_signals(actual_control_signals),
                .pcWriteEn(pcWriteEn),
                .IFIDWriteEn(IFIDWriteEn),
                
                //this stage now needs pc+2, since all of the branch part has
                //been moved form ex to here
                // next two lines are input
                .pc_plus_two(pcPlusTwo2decdoe), //??? TODO
                .pc(pc2decode),
                .IDEX_Instr(IDEXinstrOut),
                .IDEX_Mem_En(IDEX_MemEn_out),
                .IDEX_Mem_Wr(IDEX_MemWr_out),            
                .MEMWB_Instr(MemWB_instr_out),
                .MEMWB_RegWriteEN(MemWB_RegWriteEN_out),
                .MEMWB_RegDst(MemWB_RegDst_out));

    // ALSO NEED TO FLUSH THE CONTROL IN IDEX
    //
    //
    //

     mux2_1_32bit mux_2_1_32bit_0 (.out(control_signal), .in0(actual_control_signals), .in1(32'b0000_0000_0000_0000_0000_0000_0000_0000), .sel(flush));

    // TODO: connect wire    
    regIDEX regIDEX0 
                ( 
                // ********** data outputs ********
                    .instr_out(IDEXinstrOut), 
                    .pc_plus_two_out(IDEX_pc_plus_two_out), 
                    .read_data_1_out(IDEX_read_data_1_out), 
                    .read_data_2_out(IDEX_read_data_2_out), 
                    .imm_5_ext_out(IDEX_imm_5_ext_out), 
                    .imm_8_ext_out(IDEX_imm_8_ext_out),
                    .imm_11_ext_out(IDEX_imm_11_ext_out), 
                    // regsiter control
                    .clk(clk), 
                    .en(1'b1), 
                    .rst(rst),
                    // ********* data inputs *******
                    .instr_in(IDEX_instr_in),
                    .pcPlusTwo_in(pcPlusTwo2decdoe),
                    .read1data_in(read1data2IDEX), 
                    .read2data_in(read2data2IDEX),
                    .instrFiveExt_in(instrFiveExt2IDEX),
                    .instrEightExt_in(instrEightExt2IDEX),
                    .instrElevenExt_in(instrElevenExt2IDEX),
                    // *********** control outputs *******
                    // EX
                    .Op_out(Op), 
                    .ALUSrc1_out(ALUSrc1), 
                    .ALUSrc2_out(ALUSrc2),
                    .Cin_out(Cin), 
                    .invA_out(invA), 
                    .invB_out(invB), 
                    .sign_out(sign), 
                    .jump_out(jump),
                    .branch_out(branch),
                    // M
                    .MemEn_out(IDEX_MemEn_out), 
                    .MemWr_out(IDEX_MemWr_out), 
                    .dump_out(IDEX_dump_out),
                    // WB
                    .RegDst_out(IDEX_RegDst_out),
                    .RegDataSrc_out(IDEX_RegDataSrc_out),
                    .RegWriteEN_out(IDEX_RegWriteEN_out),
                    // *********** control inputs *******
                    // EX
                    .Op_in(control_signal[20:18]), 
                    .ALUSrc1_in(control_signal[7:5]), 
                    .ALUSrc2_in(control_signal[10:8]), 
                    .Cin_in(control_signal[21]), 
                    .invA_in(control_signal[22]), 
                    .invB_in(control_signal[23]), 
                    .sign_in(control_signal[24]), 
                    .Jump_in(control_signal[16]), 
                    .Branch_in(control_signal[15]),
                    // M
                    .MemEn_in(control_signal[12]), 
                    .MemWr_in(control_signal[13]), 
                    .dump_in(control_signal[25]),
                    // WB
                    .RegDst_in(control_signal[1:0]),
                    .RegDataSrc_in(control_signal[4:2]),
                    .RegWriteEN_in(control_signal[11]),
                    // dst_reg_num
                    .dst_reg_num_in(control_signal[28:26]),
                    .dst_reg_num_out(IDEX_dst_reg_num_out)
                );

    // TODO: MemWB_RegWriteEN_out to executation
  
    execution exec (
                    // Outputs
                    .Out(Out), 
                    .set(set),
                    .btr_out(btr__out),
                    .flush(flush),
                    .next_pc(next_pc),
                    .data_to_mem(ex_data_to_mem),
                    // Inputs
                    .instr(IDEXinstrOut),
                    .read_data_1(IDEX_read_data_1_out), 
                    .read_data_2(IDEX_read_data_2_out), 
                    .imm_5_ext(IDEX_imm_5_ext_out), 
                    .imm_8_ext(IDEX_imm_8_ext_out),
                    .imm_11_ext(IDEX_imm_11_ext_out),
                    .pc_plus_two(IDEX_pc_plus_two_out),
                    .branch(branch),
                    .jump(jump), 
                    .ALUSrc1(ALUSrc1), 
                    .ALUSrc2(ALUSrc2), 
                    .Op(Op), 
                    .Cin(Cin), 
                    .invA(invA), 
                    .invB(invB), 
                    .sign(sign),
                    .IDEX_Instr(IDEXinstrOut), 
                    .EXMEM_RegWriteEN(EXMem_RegWriteEN_out), 
                    .MEMWB_RegWriteEN(MemWB_RegWriteEN_out), 
                    .EXMEM_DstRegNum(EXMem_dst_reg_num_out), // TODO 
                    .MEMWB_DstRegNum(MemWB_dst_reg_num_out), 
                    .WB_DATA(write_data),
                    .EXMEM_DATA(EXMemFwdData)
                );

    
    wire [15:0] ex_data_to_mem;
    // TODO: connect wire
    regEXMem regEXMem0(
                    
                    // reg control
                    //
                    .rst(rst),
                    .en(1'b1),
                    .clk(clk),
                    // data
                    .pc_plus_two_out(EXMem_pc_plus_two_out),
                    .imm_8_ext_out(EXMem_imm_8_ext_out),

                    .aluResult_out(EXMem_aluResult_out),
                    .writeData_out(EXMem_writeData_out),
                    
                    .btr_out_out(EXMem_btr_out_out),
                    .instr_out(EXMem_instr_out),
                    .set_out(EXMem_set_out),
    
                    // Control
                    .MemEn_out(EXMem_MemEn_out), 
                    .MemWr_out(EXMem_MemWr_out), 
                    .halt_out(EXMem_halt_out),
                    .RegDst_out(EXMem_RegDst_out),
                    .RegDataSrc_out(EXMem_RegDataSrc_out),
                    .RegWriteEN_out(EXMem_RegWriteEN_out),
    
                    // data
                    .pc_plus_two_in(IDEX_pc_plus_two_out),
                    .imm_8_ext_in(IDEX_imm_8_ext_out),
                    .Out_in(Out),
                    .read_data_2_in(ex_data_to_mem),
                    .btr_out_in(btr__out),
                    .instr_in(IDEXinstrOut),
                    .set_in(set),
    
                    // control
                    .MemEn_in(IDEX_MemEn_out), 
                    .MemWr_in(IDEX_MemWr_out), 
                    .dump_in(IDEX_dump_out),
                    .RegDst_in(IDEX_RegDst_out),
                    .RegDataSrc_in(IDEX_RegDataSrc_out),
                    .RegWriteEN_in(IDEX_RegWriteEN_out),
                     // Dst_reg_num
                    .dst_reg_num_in(IDEX_dst_reg_num_out),
                    .dst_reg_num_out(EXMem_dst_reg_num_out) 
                );
    wire [15:0] EXMemFwdData;
    wire [2:0] EXMemFwdDataMuxSel;
    assign EXMemFwdDataMuxSel = EXMem_RegDataSrc_out;
    mux8_1_16bit EXMemFwdDataMux(
                      .out(EXMemFwdData),
                      .sel(EXMemFwdDataMuxSel),
                      .in0(16'bxxxxxxxxxxxxxxxx),
                      .in1(EXMem_aluResult_out),
                      .in2(EXMem_imm_8_ext_out),
                      .in3(EXMem_pc_plus_two_out),
                      .in4(EXMem_set_out),
                      .in5(EXMem_btr_out_out),
                      .in6(16'bxxxxxxxxxxxxxxxx),
                      .in7(16'bxxxxxxxxxxxxxxxx)
                  );
        

    memory memory0( .readData(mem_data_out), // TODO
                    .aluResult(EXMem_aluResult_out), 
                    .writeData(EXMem_writeData_out), 
                    .MemEn(EXMem_MemEn_out), 
                    .MemWr(EXMem_MemWr_out), 
                    .halt(EXMem_halt_out),
                    .clk(clk), 
                    .rst(rst)
                );

    // TODO: connect wire
    regMemWB regMemWB0 (
                    // reg control
                    //
                    .rst(rst),
                    .en(1'b1),
                    .clk(clk),
                    // data
                    .instr(MemWB_instr_out),
                    .mem_data_out(MemWB_mem_data_out),
                    .alu_out(MemWB_alu_out),
                    .imm_8_ext(MemWB_imm_8_ext),
                    .btr_out(MemWB_btr_out),
                    .pc_plus_two(MemWB_pc_plus_two),
                    .cond_set(MemWB_cond_set),
                    // control
                    .RegDst_out(MemWB_RegDst_out),
                    .RegDataSrc_out(RegDataSrc),
                    .RegWriteEN_out(MemWB_RegWriteEN_out),
                    // data
                    .instr_in(EXMem_instr_out),
                    .readData_in(mem_data_out),
                    .aluResult_in(EXMem_aluResult_out),
                    .imm_8_ext_in(EXMem_imm_8_ext_out),
                    .btr_out_in(EXMem_btr_out_out),
                    .pc_plus_two_in(EXMem_pc_plus_two_out),
                    .set_in(EXMem_set_out),
                    //control
                    .RegDst_in(EXMem_RegDst_out),
                    .RegDataSrc_in(EXMem_RegDataSrc_out),
                    .RegWriteEN_in(EXMem_RegWriteEN_out),
                     // Dst_reg_num
                    .dst_reg_num_in(EXMem_dst_reg_num_out),
                    .dst_reg_num_out(MemWB_dst_reg_num_out)
    );

    writeback wb(   .write_data(write_data), 
                    .RegDataSrc(RegDataSrc), 
                    .mem_data_out(MemWB_mem_data_out), 
                    .alu_out(MemWB_alu_out), 
                    .imm_8_ext(MemWB_imm_8_ext),
                    .btr_out(MemWB_btr_out), 
                    .pc_plus_two(MemWB_pc_plus_two), 
                    .cond_set(MemWB_cond_set)
                 );

endmodule // proc
// DUMMY LINE FOR REV CONTROL :0:
