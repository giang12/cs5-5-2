module regMemWB(
                    // data
                    instr,
                    mem_data_out,
                    alu_out,
                    imm_8_ext,
                    btr_out,
                    pc_plus_two,
                    cond_set,
                    // control
                    RegDataSrc_out,
                    RegWriteEN_out,
                    // data
                    instr_in,
                    readData_in,
                    aluResult_in,
                    imm_8_ext_in,
                    btr_out_in,
                    pc_plus_two_in,
                    set_in,
                    //control
                    RegDataSrc_in,
                    RegWriteEN_in

    );
    // Data Portion

    input [15:0] instr_in;
    input [15:0] readData_in;
    input [15:0] aluResult_in; // progagate from EX/MEM Reg
    input [15:0] imm_8_ext_in; // progagate from EX/MEM Reg
    input [15:0] btr_out_in;
    input [15:0] pc_plus_two_in; // progagate from EX/MEM Reg
    input [15:0] set_in;

    output [15:0] instr;
    output [15:0] mem_data_out;
    output [15:0] alu_out;
    output [15:0] imm_8_ext;
    output [15:0] btr_out;
    output [15:0] pc_plus_two;
    output [15:0] cond_set;
    
    // Control Portion
    input [2:0] RegDataSrc_in;
    output [2:0] RegDataSrc_out;
    input RegWriteEN_in;
    output RegWriteEN_out;


    
    dff_16bit dff1(.out(instr), .in(instr_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff2(.out(mem_data_out), .in(readData_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff3(.out(alu_out), .in(aluResult_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff4(.out(imm_8_ext), .in(imm_8_ext_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff5(.out(btr_out), .in(btr_out_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff6(.out(pc_plus_two), .in(pc_plus_two_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff7(.out(cond_set), .in(set_in), .en(en), .rst(rst), .clk(clk));
    
    dff_8bit dff8(  .out({RegDataSrc_out, RegWriteEN_out, 4'bx}), 
                    .in({RegDataSrc_in, RegWriteEN_in, 4'bx}), 
                    .en(en), 
                    .rst(rst), 
                    .clk(clk));

endmodule

