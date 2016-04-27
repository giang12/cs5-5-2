module fetch(instr, pcCurrent, pcPlusTwo, err, pcNext, pcWriteEN, clk, rst, exception, pcSel);
    input clk, rst;
    input exception;
    input pcWriteEN;
    input pcSel;
    input [15:0] pcNext;
    output [15:0] pcPlusTwo; 
    output [15:0] pcCurrent; 
    output [15:0] instr;
    output err;
 
    wire [15:0] instr_from_memory;
    wire [15:0] pc_current;
    assign pcCurrent = pc_current;
    wire Ofl_dummy;
    wire Cout_dummy;
    wire [15:0] next_pc;
    wire err;
    // initialize modules
    
    mux2_1_16bit next_pc_mux(
          // Outputs
          .out(next_pc),
          // Inputs
          .sel(pcSel),
          .in0(pcPlusTwo),
          .in1(pcNext)
        );
 
    mux2_1_16bit err_handler_mux(
          // Outputs
          .out(instr),
          // Inputs
          .sel(err),
          .in0(instr_from_memory),
          .in1(16'b0000000000000000)
        );
  
    
    //PC Reg
    reg_16bit pc0(          .out(pc_current), 
                            .in(next_pc), 
                            .en(pcWriteEN), // disable pc reg when dump ??
                            .rst(rst), 
                            .clk(clk));
    // instruction mem
    memory2c_align instrctionMem( 
                            .data_out(instr_from_memory),
                            .data_in(16'b0),
                            .addr(pc_current),
                            .enable(1'b1), // disable mem when dump
                            .wr(1'b0),
                            .createdump(1'b0),
                            .clk(clk),
                            .rst(rst),
                            .err(err));
    
    cla_16bit adder0(       .OUT(pcPlusTwo),
                            .Ofl(Ofl_dummy),
                            .Cout(Cout_dummy),
                            .A(pc_current),
                            .B(16'b0000_0000_0000_0010), // pc + 2
                            .CI(1'b0),
                            .sign(1'b1));
endmodule
