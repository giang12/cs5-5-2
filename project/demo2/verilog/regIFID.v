module regIFID( instr_out, 
                pcPlusTwo_out, 
                pcCurrent_out, 
                clk, 
                en, 
                rst, 
                pcPlusTwo_in, 
                pcCurrent_in, 
                instr_in
                );
    // Register control
    input clk, en, rst;
    // Data Portion
    input [15:0] pcPlusTwo_in;
    input [15:0] pcCurrent_in;
    input [15:0] instr_in;

    output [15:0] instr_out;
    output [15:0] pcPlusTwo_out;
    output [15:0] pcCurrent_out;
    
    dff_16bit dff1(.out(pcPlusTwo_out), .in(pcPlusTwo_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff2(.out(pcCurrent_out), .in(pcCurrent_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff3(.out(instr_out), .in(instr_in), .en(en), .rst(rst), .clk(clk));

endmodule
