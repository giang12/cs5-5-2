module reg_64bit (out, in, clk, rst, en);
    output [63:0] out;
    input [63:0] in;
    input clk, rst, en;

    reg_16bit reg_16bit_0(.out(out[15:0]), .in(in[15:0]), .en(en), .rst(rst), .clk(clk));
    reg_16bit reg_16bit_1(.out(out[31:16]), .in(in[31:16]), .en(en), .rst(rst), .clk(clk));
    reg_16bit reg_16bit_2(.out(out[47:32]), .in(in[47:32]), .en(en), .rst(rst), .clk(clk));
    reg_16bit reg_16bit_3(.out(out[63:48]), .in(in[63:48]), .en(en), .rst(rst), .clk(clk));

endmodule
