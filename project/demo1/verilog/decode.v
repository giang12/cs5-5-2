module decode(  RegDataSrc, ALUSrc1, ALUSrc2, Op, MemEn, MemWr, Branch, Jump, Exception, Cin, invA, invB, sign, dump, instr, 
                // register file 
                clk, rst, read1data, read2data, writedata,
                // ext module
                instrEightExt, instrElevenExt, instrFiveExt,
                // btr module
                btr_out
                );
    // control module
    input [15:0] instr;
    output [2:0] RegDataSrc, ALUSrc1, ALUSrc2, Op;
    output MemEn, MemWr, Branch, Jump, Exception, Cin, invA, invB, sign, dump;
    wire [1:0] RegDst;
    wire SignedExt; 

    // register file
    input clk, rst;
    input [15:0] writedata;
    output [15:0] read1data, read2data;
    wire [15:0] reg1_data, reg2_data;
    assign read1data = reg1_data;
    assign read2data = reg2_data;
    wire [3:0] writeregsel; 
    wire err; // TODO ???
    wire write;
    
    
  
    // ext modules
    output [15:0] instrEightExt, instrElevenExt, instrFiveExt; 
    output [15:0] btr_out;
    
    // modules initialization
    special_control special_control0(
                        .dump(dump),
                        .instr(instr[15:11])
                );
    
    control control0(   // outputs 
                        .RegDst(RegDst),
                        .RegDataSrc(RegDataSrc), 
                        .ALUSrc1(ALUSrc1), 
                        .ALUSrc2(ALUSrc2), 
                        .RegWriteEn(write), 
                        .MemEn(MemEn), 
                        .MemWr(MemWr), 
                        .SignedExt(SignedExt),  
                        .Branch(Branch), 
                        .Jump(Jump), 
                        .Exception(Exception), 
                        .Op(Op), 
                        .Cin(Cin), 
                        .invA(invA), 
                        .invB(invB), 
                        .sign(sign),
                        // inputs
                        .instr1(instr[15:11]), 
                        .instr2(instr[1:0]));

    // 16 * 8 register file
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
                        .writeregsel(writeregsel[2:0]), 
                        .writedata(writedata),
                        .write(write));

    
    mux4_1_4bit mux0 (  // output
                        .out(writeregsel),
                        // inputs
                        .sel(RegDst), 
                        .in0(instr[4:2]), 
                        .in1(instr[7:5]), 
                        .in2(instr[10:8]), 
                        .in3(3'b111));


    
    ext_mod8_16 ext0 (  .out(instrEightExt), 
                        .sel(SignedExt), 
                        .in(instr[7:0]));

    ext_mod11_16 ext1(  .out(instrElevenExt), 
                        .sel(SignedExt), 
                        .in(instr[10:0]));

    ext_mod5_16 ext2 (  .out(instrFiveExt), 
                        .sel(SignedExt), 
                        .in(instr[4:0]));
    btr_mod btr0 (
                        .out(btr_out),
                        .in(reg1_data)
                    );
endmodule
