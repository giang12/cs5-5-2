module regIFID( instr_out, 
                pcPlusTwo_out, 
                pcCurrent_out,
                err_out, 
                clk, 
                en, 
                rst, 
                pcPlusTwo_in, 
                pcCurrent_in, 
                instr_in,
                err_in
                );
    // Register control
    input clk, en, rst;
    // Data Portion
    input [15:0] pcPlusTwo_in;
    input [15:0] pcCurrent_in;
    input [15:0] instr_in;
    input err_in; 
    output [15:0] instr_out;
    output [15:0] pcPlusTwo_out;
    output [15:0] pcCurrent_out;
    output err_out;
    wire[6:0] dummy;
  
    wire [15:0] instr; 
    assign instr = rst ? 16'b00001_xxxxxxxxxxx : instr_in;
    
    dff_16bit dff1(.out(pcPlusTwo_out), .in(pcPlusTwo_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff2(.out(pcCurrent_out), .in(pcCurrent_in), .en(en), .rst(rst), .clk(clk));
    dff_16bit dff3(.out(instr_out), .in(instr), .en(en), .rst(1'b0), .clk(clk));
    dff_8bit dff4(.out({err_out, dummy}), .in({err_in, 7'bx}), .en(en), .rst(rst), .clk(clk));
endmodule
