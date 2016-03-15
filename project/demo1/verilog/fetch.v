module fetch(instr, pcCurrent, pcPlusTwo, pcNext, clk, rst, dump);
    input clk, rst, dump;
    input [15:0] pcNext;
    output [15:0] pcPlusTwo; //??
    output [15:0] pcCurrent; //??
    output [15:0] instr;

    wire [15:0] pcCurrent;
    wire dump_n; 
    wire Ofl;
    assign dump_n = ~dump;
    // initialize modules
    // PC 16bit register
    reg_16bit pc0(          .out(pcCurrent), 
                            .in(pcNext), 
                            .en(dump_n), // disable pc reg when dump ??
                            .rst(rst), 
                            .clk(clk));
    // instruction mem
    memory2c instrctionMem( .data_out(instr),
                            .data_in(16'b0),
                            .addr(pcCurrent),
                            .enable(dump_n), // disable mem when dump
                            .wr(1'b0),
                            .createdump(1'b0),
                            .clk(clk),
                            .rst(rst));
    
    cla_16bit adder0(       .OUT(pcPlusTwo),
                            .Ofl(Ofl),
                            .A(pcCurrent),
                            .B(16'b0000_0000_0000_0010), // pc + 2
                            .CI(1'b0),
                            .sign(1'b1));
endmodule
