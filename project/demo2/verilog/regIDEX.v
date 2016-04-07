module regIDEX();
    // Register control
    input clk, en, rst;
        
    // ************************ Data Portion ************************
    input [15:0] pcPlusTwo_in;
    //input  [15:0] pcCurrent;
    input [15:0] instr_in; 

    // to until writeback stage
    output [15:0] instr_out;
    // to until execution stage 
    output [15:0] pc_plus_two_out;
    // //output  [15:0] pc;
    
    // from decode stage
    input [15:0] instrEightExt_in, instrFiveExt_in;
    //input  [15:0] instrElevenExt;
    input [15:0] btr_out_in;
    input [15:0] read1data_in, read2data_in;

    // to until execution stage
    output [15:0] read_data_1_out, read_data_2_out;
    output [15:0] imm_5_ext_out, imm_8_ext_out;
    //output  [15:0] imm_11_ext;
    
    // to until WB stage
    output [15:0] btr_out_out;
    
    // ************************ Control Portion **********************
    // TODO: where to put Exception?? Through ID/EX register?? Or directly
    // back to fetch stage.
    //input Exception;
    //output Exception;
    
    // EX
    input [2:0] ALUSrc1_in, ALUSrc2_in, Op_in;
    output [2:0] Op_out, ALUSrc1_out, ALUSrc2_out;
    input Cin_in, invA_in, invB_in, sign_in, Jump_in, Branch_in;
    output Cin_out, invA_out, invB_out, sign_out, jump_out, branch_out;

    // M
    input MemEn_in, MemWr_in, dump_in;
    output MemEn_out, MemWr_out, dump_out;
    
    // WB
    input [2:0] RegDataSrc_in;
    output [2:0] RegDataSrc_out; // has to propagate to the end of pipeline
    input RegWriteEN_in;
    output RegWriteEN_out;

    
    // *********************** RegModules for Data ****************
 
    dff_16bit dff1(.out(pc_plus_two_out), .in(pcPlusTwo_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff2(.out(instr_out), .in(instr_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff7(.out(instrEightExt_out), .in(instrEightExt_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff3(.out(instrFiveExt_out), .in(instrFiveExt_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff4(.out(btr_out_out), .in(btr_out_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff5(.out(read1data_out), .in(read1data_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff6(.out(read2data_out), .in(read2data_in), .en(en), .rst(rst), .clk(clk));


    // *********************** RegModules for Control ****************
    
    
endmodule
