module dff_8bit(out, in, en, rst, clk);
    input [7:0] in;
    input en, rst, clk;
    output [7:0] out;
    wire [7:0] w1;
    
    dff mod0(.q(out[0]), .d(w1[0]), .clk(clk), .rst(rst));
    dff mod1(.q(out[1]), .d(w1[1]), .clk(clk), .rst(rst));
    dff mod2(.q(out[2]), .d(w1[2]), .clk(clk), .rst(rst));
    dff mod3(.q(out[3]), .d(w1[3]), .clk(clk), .rst(rst));
    dff mod4(.q(out[4]), .d(w1[4]), .clk(clk), .rst(rst));
    dff mod5(.q(out[5]), .d(w1[5]), .clk(clk), .rst(rst));
    dff mod6(.q(out[6]), .d(w1[6]), .clk(clk), .rst(rst));
    dff mod7(.q(out[7]), .d(w1[7]), .clk(clk), .rst(rst));
    
    mux2_1_8bit mod8(.out(w1), .in0(out), .in1(in), .sel(en));
endmodule
