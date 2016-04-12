module fetch(instr, pcCurrent, pcPlusTwo, pcNext, pcWriteEN, clk, rst, dump, exception);
    input clk, rst, dump;
    input exception;
    input pcWriteEN;
    input [15:0] pcNext;
    output [15:0] pcPlusTwo; 
    output [15:0] pcCurrent; 
    output [15:0] instr;

    wire [15:0] pc_current;
    assign pcCurrent = pc_current;
    wire Ofl_dummy;
    wire Cout_dummy;
    wire [15:0] next_pc;
    // initialize modules
    
    mux2_1_16bit next_pc_exception_handling_mux(
          // Outputs
          .out(next_pc),
          // Inputs
          .sel(exception),
          .in0(pcNext),
          .in1(pc_current)
        );
   
    //PC Reg
    reg_16bit pc0(          .out(pc_current), 
                            .in(next_pc), 
                            .en(pcWriteEN), // disable pc reg when dump ??
                            .rst(rst), 
                            .clk(clk));
    // instruction mem
    memory2c instrctionMem( .data_out(instr),
                            .data_in(16'b0),
                            .addr(pcCurrent),
                            .enable(1'b1), // disable mem when dump
                            .wr(1'b0),
                            .createdump(1'b0),
                            .clk(clk),
                            .rst(rst));
    
    cla_16bit adder0(       .OUT(pcPlusTwo),
                            .Ofl(Ofl_dummy),
                            .Cout(Cout_dummy),
                            .A(pc_current),
                            .B(16'b0000_0000_0000_0010), // pc + 2
                            .CI(1'b0),
                            .sign(1'b1));
endmodule
