module decode( RegDst, RegDataSrc, ALUSrc1, ALUSrc2, Op, MemEn, MemWr, Branch, Jump, Exception, Cin, invA, invB, sign, dump, instr, 
                // register file 
                clk, rst, read1data, read2data, writedata, 
                // ext module
                instrEightExt, instrElevenExt, instrFiveExt,
                // btr module
                btr_out,
                // 04/06 update
                RegWriteEN_in, RegWriteEN_out,
                // 04/12 if_flush, actual control signals
                if_flush,
                actual_control_signals,
                next_pc,
                pcWriteEn,
                IFIDWriteEn,
                
                //this stage now needs pc+2, since all of the branch part has
                //been moved form ex to here
                // next two lines are input
                pc_plus_two,
                pc,
                IDEX_Instr,
                IDEX_Mem_En,
                IDEX_Mem_Wr             
                MEMWB_Instr,
                MEMWB_RegWriteEN,
                MEMWB_RegDst);

    //rst signal to if/id register

    output if_flush;
    output [15:0] next_pc
    output [31:0] actual_control_signals
    output pc_WR_EN;
    output if_ID_WR_EN;

    input [15:0] pc_plus_two;
    input [15:0] pc;
   
    input [15:0] IDEX_Instr;
    input IDEX_Mem_En;
    input IDEX_Mem_Wr;

  


    // control module
    input [15:0] instr;
    output [2:0] RegDataSrc, ALUSrc1, ALUSrc2, Op;
    output MemEn, MemWr, Branch, Jump, Exception, Cin, invA, invB, sign, dump;
    output [1:0] RegDst;
    wire [1:0] RegDst;
    wire SignedExt; 

    // register file
    input clk, rst;
    input [15:0] writedata;
    output [15:0] read1data, read2data;
    wire [15:0] reg1_data, reg2_data;
    assign read1data = reg1_data;
    assign read2data = reg2_data;
    wire [2:0] writeregsel; 
    wire err; // TODO ???
    //wire write;
    input RegWriteEN_in;
    output RegWriteEN_out;
  
    // ext modules
    output [15:0] instrEightExt, instrElevenExt, instrFiveExt; 
    output [15:0] btr_out;
    
    // modules initialization
    
   
    // branch_cond_test
    wire [2:0] pc_src;
    branch_cond_test bran_cond (
                        .data(reg1_data),  
                        .instr(instr[12:11]), 
                        .branch(normal_control_signals[15]), 
                        .jump(normal_control_signals[16]), 
                        .pc_src(pc_src)
                        .if_flush(if_flush)
                );
    

    // match_both unit (test the formation of the instruction in the current
    // stage)

   wire need_to_match_both;   
   match_both match0 (.opcode(instr[15:11]), .matchBoth(need_to_match_both));
  
        
 


    
    
    wire control_signals_mux_sel;

    hazard_detect hazard_detect0 (
                        .pcWriteEn(pcWriteEn), 
                        .IFIDWriteEn(IFIDWriteEn), 
                        .control_sel(control_signals_mux_sel), 
                        .match_both(need_to_match_both),
                        .IDEX_Instr(IDEX_Instr),
                        .IFID_Instr(instr), 
                        .IDEX_Mem_En(IDEX_Mem_En), 
                        .IDEX_Mem_Wr(IDEX_Mem_Wr)
                );
    
    
    wire [31:0] actual_control_signals;
    wire [31:0] normal_control_signals;
    mux2_1_32bit mux_2_1_32bit_0 (.out(actual_control_signals), .in0(32'b0000_0000_0000_0000_0000_0000_0000_0000), .in1(normal_control_signals), .sel(control_signals_mux_sel));

    
    //not used for now~?
    special_control special_control0(
                        .dump(dump),
                        .instr(instr[15:11])
                );
    
  

    control control0(   // outputs 
                        .RegDst(normal_control_signals[1:0]), // [1:0]
                        .RegDataSrc(normal_control_signals[4:2]), // [4:2] 
                        .ALUSrc1(normal_control_signals[7:5]), // [7:5]
                        .ALUSrc2(normal_control_signals[10:8]), // [10:8]
                        .RegWriteEn(normal_control_signals[11]), // [11] 
                        .MemEn(normal_control_signals[12]), // [12]
                        .MemWr(normal_control_signals[13]), // [13]
                        .SignedExt(normal_control_signals[14]),  // [14]
                        .Branch(normal_control_signals[15]),  // [15]
                        .Jump(normal_control_signals[16]),  // [16]
                        .Exception(normal_control_signals[17]), // [17]
                        .Op(normal_control_signals[20:18]), // [20:18]
                        .Cin(normal_control_signals[21]), // [21]
                        .invA(normal_control_signals[22]), // [22]
                        .invB(normal_control_signals[23]), // [23]
                        .sign(normal_control_signals[24]), // [24]
                        // inputs
                        .instr1(instr[15:11]), 
                        .instr2(instr[1:0]));
        assign normal_control_signals[31:25] = 7'bxxxxxxx;

    // 16 * 8 register file  // TODO  need change to self by passing reg
    rf regFile0 (
                        // Outputs
                        .read1data(reg1_data), 
                        .read2data(reg2_data), 
                        .err(err),
                        // Inputs
                        .clk(clk), 
                        .rst(rst), 
                        .read1regsel(instr[10:8]), 
                        .read2regsel(instr[7:5]), 
                        .writeregsel(writeregsel), 
                        .writedata(writedata),
                        .write(MEMWB_RegWriteEN));

    
    
    //mux for the Dst Register Number
    mux4_1_4bit mux0 (  // output
                        .out(writeregsel),
                        // inputs
                        .sel(MEMWB_RegDst), 
                        .in0({{1'bx},{instr[4:2]}}), 
                        .in1({{1'bx},{instr[7:5]}}), 
                        .in2({{1'bx},{instr[10:8]}}), 
                        .in3({{1'bx},{3'b111}}));


    wire [15:0] imm_8_ext
    wire [15:0] imm_11_ext;
    assign instrEightExt = imm_8_ext;
    assign instrEleventExt = imm_11_ext;  
  
    ext_mod8_16 ext0 (  .out(imm_8_ext), 
                        .sel(normal_control_signals[14]), 
                        .in(instr[7:0]));

    ext_mod11_16 ext1(  .out(imm_11_ext), 
                        .sel(normal_control_signals[14]), 
                        .in(instr[10:0]));

    ext_mod5_16 ext2 (  .out(instrFiveExt), 
                        .sel(normal_control_signals[14]), 
                        .in(instr[4:0]));
    btr_mod btr0 (
                        .out(btr_out),
                        .in(reg1_data)
                    );

  wire [15:0] pc_plus_two_plus_imm_8_ext;
  wire [15:0] pc_plus_two_plus_imm_11_ext;
  wire [15:0] rs_plus_imm_8_ext;


   cla_16bit adder0(
          // Outputs
          .OUT(rs_plus_imm_8_ext),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
          // Inputs
          .A(read_data_1),
          .B(imm_8_ext),
          .CI(1'b0),
          .sign(1'b1)
        ); 

  cla_16bit adder1(
          // Outputs
          .OUT(pc_plus_two_plus_imm_8_ext),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
         // Inputs
          .A(pc_plus_two),
          .B(imm_8_ext),
          .CI(1'b0),
          .sign(1'b1)
        ); 

  cla_16bit adder2(
          // Outputs
          .OUT(pc_plus_two_plus_imm_11_ext),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
         // Inputs
          .A(pc_plus_two),
          .B(imm_11_ext),
          .CI(1'b0),
          .sign(1'b1)
        ); 
  

  mux8_1_16bit branch_target_mux(
          // Outputs
          .out(next_pc),
          // Inputs
          .sel(pc_src),
          .in0(pc),
          .in1(pc_plus_two),
          .in2(rs_plus_imm_8_ext),
          .in3(pc_plus_two_plus_imm_8_ext),
          .in4(pc_plus_two_plus_imm_11_ext),
          .in5(16'bxxxx_xxxx_xxxx_xxxx),
          .in6(16'bxxxx_xxxx_xxxx_xxxx),
          .in7(16'bxxxx_xxxx_xxxx_xxxx)
        );


endmodule
