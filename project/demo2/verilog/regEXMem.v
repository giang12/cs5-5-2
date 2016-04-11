module regEXMem(
    // data
    pc_plus_two_out,
    imm_8_ext_out,
    aluResult_out,
    writeData_out,
    btr_out_out,
    instr_out,
    set_out,
    
    // Control
    MemEn_out, 
    MemWr_out, 
    halt_out,
    RegDst_out,
    RegDataSrc_out,
    RegWriteEN_out,
    
    // data
    pc_plus_two_in,
    imm_8_ext_in,
    Out_in,
    read_data_2_in,
    btr_out_in,
    instr_in,
    set_in,
    
    // control
    MemEn_in, 
    MemWr_in, 
    dump_in,
    RegDst_in,
    RegDataSrc_in,
    RegWriteEN_in
    );


    // Data Portion
    // progagate to WB stage from ID/EX Reg 
    input [15:0] pc_plus_two_in;
    output  [15:0] pc_plus_two_out;

    input [15:0] imm_8_ext_in;
    output [15:0] imm_8_ext_out;

    input [15:0] Out_in;
    output [15:0] aluResult_out;

    input [15:0] read_data_2_in;
    output [15:0] writeData_out;
    
    input [15:0] btr_out_in;
    output [15:0] btr_out_out;
    
    input [15:0] instr_in;
    output [15:0] instr_out;

    input [15:0] set_in;
    output [15:0] set_out;
    
    // Control Portion

    // M
    input MemEn_in, MemWr_in, dump_in;
    output MemEn_out, MemWr_out, halt_out;

    // WB
    input [1:0] RegDst_in;
    output [1:0] RegDst_out;
    input [2:0] RegDataSrc_in;
    output [2:0] RegDataSrc_out; // has to propagate to the end of pipeline
    input RegWriteEN_in;
    output RegWriteEN_out;
    
    wire [6:0] w1; // dummy wire

    dff_16bit dff1(.out(pc_plus_two_out), .in(pc_plus_two_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff2(.out(imm_8_ext_out), .in(imm_8_ext_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff3(.out(aluResult_out), .in(Out_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff4(.out(writeData_out), .in(read_data_2_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff5(.out(btr_out_out), .in(btr_out_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff6(.out(instr_out), .in(instr_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff7(.out(set_out), .in(set_in), .en(en), .rst(rst), .clk(clk));

    dff_16bit dff8( .out({MemEn_out, MemWr_out, halt_out, RegDst_out, RegWriteEN_out, RegDataSrc_out, w1}),
                    .in({MemEn_in, MemWr_in, dump_in, RegDst_in, RegWriteEN_in, RegDataSrc_in, 7'bx}), 
                    .en(en), 
                    .rst(rst), 
                    .clk(clk));
    
endmodule

