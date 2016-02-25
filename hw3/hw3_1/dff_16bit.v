module dff_16bit(out, in, en, rst, clk);
    input [15:0] in;
    input en, rst, clk;
    output [15:0] out;
    wire [15:0] w1;
    
    dff mod0(.q(w1[0]), .d(out[0]), .clk(clk), .rst(rst));
    dff mod1(.q(w1[1]), .d(out[1]), .clk(clk), .rst(rst));
    dff mod2(.q(w1[2]), .d(out[2]), .clk(clk), .rst(rst));
    dff mod3(.q(w1[3]), .d(out[3]), .clk(clk), .rst(rst));
    dff mod4(.q(w1[4]), .d(out[4]), .clk(clk), .rst(rst));
    dff mod5(.q(w1[5]), .d(out[5]), .clk(clk), .rst(rst));
    dff mod6(.q(w1[6]), .d(out[6]), .clk(clk), .rst(rst));
    dff mod7(.q(w1[7]), .d(out[7]), .clk(clk), .rst(rst));
    dff mod8(.q(w1[8]), .d(out[8]), .clk(clk), .rst(rst));
    dff mod9(.q(w1[9]), .d(out[9]), .clk(clk), .rst(rst));
    dff mod10(.q(w1[10]), .d(out[10]), .clk(clk), .rst(rst));
    dff mod11(.q(w1[11]), .d(out[11]), .clk(clk), .rst(rst));
    dff mod12(.q(w1[12]), .d(out[12]), .clk(clk), .rst(rst));
    dff mod13(.q(w1[13]), .d(out[13]), .clk(clk), .rst(rst));
    dff mod14(.q(w1[14]), .d(out[14]), .clk(clk), .rst(rst));
    dff mod15(.q(w1[15]), .d(out[15]), .clk(clk), .rst(rst));
    
    mux2_1_16bit mod16(.out(w1), .in0(out), .in1(in), .sel(en));
endmodule
