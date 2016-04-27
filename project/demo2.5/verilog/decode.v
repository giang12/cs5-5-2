module decode( instr, 
                // register files
                clk, rst, read1data, read2data, writedata, 
                // ext module
                instrEightExt, instrFiveExt, instrElevenExt,
                
                // 04/12  actual control signals
                // outputs
                actual_control_signals,
                pcWriteEn,
                IFIDWriteEn,
                
                //this stage now needs pc+2, since all of the branch part has
                //been moved form ex to here
                // next two lines are input
                pc_plus_two,
                pc,
                IDEX_Instr,
                IDEX_Mem_En,
                IDEX_Mem_Wr,            
                MEMWB_Instr,
                MEMWB_RegWriteEN,
                MEMWB_RegDst);

    //rst signal to if/id register

    // ext modules
    output [15:0] instrEightExt, instrFiveExt, instrElevenExt;
    output [31:0] actual_control_signals;
    output pcWriteEn;
    output IFIDWriteEn;
    output [15:0] read1data, read2data;
    
    input [15:0] pc_plus_two;
    input [15:0] pc;
   
    input [15:0] IDEX_Instr;
    input IDEX_Mem_En;
    input IDEX_Mem_Wr;

    // control module
    input [15:0] instr;
    // register file
    input clk, rst;
    input [15:0] writedata;
    input [15:0] MEMWB_Instr;
    input MEMWB_RegWriteEN;
    input [1:0] MEMWB_RegDst; 
    
    wire [15:0] reg1_data, reg2_data;
    assign read1data = reg1_data;
    assign read2data = reg2_data;
    wire [3:0] writeregsel; 
    wire err; // TODO ???
    
    wire dump;
  
    
    // modules initialization
    
   
    

    // match_both unit (test the formation of the instruction in the current
    // stage)

   wire need_to_match_both;   
   match_both match0 (.opcode(instr[15:11]), .matchBoth(need_to_match_both));
  
        
 
    // handle intialization of instr 00000000000
    
    
    wire control_signals_mux_sel;

    hazard_detect hazard_detect0 (
                        .pcWriteEn(pcWriteEn), 
                        .IFIDWriteEn(IFIDWriteEn), 
                        .control_sel(control_signals_mux_sel), 
                        .validRt(need_to_match_both),
                        .IDEX_Instr(IDEX_Instr),
                        .IFID_Instr(instr), 
                        .IDEX_Mem_En(IDEX_Mem_En), 
                        .IDEX_Mem_Wr(IDEX_Mem_Wr)
                );
    
    
    wire [31:0] actual_control_signals;
    wire [31:0] normal_control_signals;
    mux2_1_32bit mux_2_1_32bit_0 (.out(actual_control_signals), .in0(32'b0000_0000_0000_0000_0000_0000_0000_0000), .in1(normal_control_signals), .sel(control_signals_mux_sel));

    
    //not used for now~?
    special_control special_contro0(
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
        assign normal_control_signals[31:29] = 3'bxxx;
        assign normal_control_signals[25] = dump;
    
    dst_reg_parser dst_reg_parser0 (
                        .instr(instr), 
                        .RegDst(normal_control_signals[1:0]),
                        .Dst_Reg(normal_control_signals[28:26])
                        );

    // 16 * 8 register file  // TODO  need change to self by passing reg
    rf_bypass regFile0 (
                        // Outputs
                        .read1data(reg1_data), 
                        .read2data(reg2_data), 
                        .err(err),
                        // Inputs
                        .clk(clk), 
                        .rst(rst), 
                        .read1regsel(instr[10:8]), 
                        .read2regsel(instr[7:5]), 
                        .writeregsel(writeregsel[2:0]), 
                        .writedata(writedata),
                        .write(MEMWB_RegWriteEN));

    
    
    //mux for the Dst Register Number
    mux4_1_4bit mux0 (  // output
                        .out(writeregsel),
                        // inputs
                        .sel(MEMWB_RegDst), 
                        .in0({{1'bx},{MEMWB_Instr[4:2]}}), 
                        .in1({{1'bx},{MEMWB_Instr[7:5]}}), 
                        .in2({{1'bx},{MEMWB_Instr[10:8]}}), 
                        .in3({{1'bx},{3'b111}}));

  
    ext_mod8_16 ext0 (  .out(instrEightExt), 
                        .sel(normal_control_signals[14]), 
                        .in(instr[7:0]));

    ext_mod11_16 ext1(  .out(instrElevenExt), 
                        .sel(normal_control_signals[14]), 
                        .in(instr[10:0]));

    ext_mod5_16 ext2 (  .out(instrFiveExt), 
                        .sel(normal_control_signals[14]), 
                        .in(instr[4:0]));
endmodule
