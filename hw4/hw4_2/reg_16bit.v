module reg_16bit(out, in, en, rst, clk);
    input [15:0] in;
    input en, rst, clk;
    output [15:0] out;
    wire [15:0] w1;
    
    dff mod0(.q(out[0]), .d(w1[0]), .clk(clk), .rst(rst));
    dff mod1(.q(out[1]), .d(w1[1]), .clk(clk), .rst(rst));
    dff mod2(.q(out[2]), .d(w1[2]), .clk(clk), .rst(rst));
    dff mod3(.q(out[3]), .d(w1[3]), .clk(clk), .rst(rst));
    dff mod4(.q(out[4]), .d(w1[4]), .clk(clk), .rst(rst));
    dff mod5(.q(out[5]), .d(w1[5]), .clk(clk), .rst(rst));
    dff mod6(.q(out[6]), .d(w1[6]), .clk(clk), .rst(rst));
    dff mod7(.q(out[7]), .d(w1[7]), .clk(clk), .rst(rst));
    dff mod8(.q(out[8]), .d(w1[8]), .clk(clk), .rst(rst));
    dff mod9(.q(out[9]), .d(w1[9]), .clk(clk), .rst(rst));
    dff mod10(.q(out[10]), .d(w1[10]), .clk(clk), .rst(rst));
    dff mod11(.q(out[11]), .d(w1[11]), .clk(clk), .rst(rst));
    dff mod12(.q(out[12]), .d(w1[12]), .clk(clk), .rst(rst));
    dff mod13(.q(out[13]), .d(w1[13]), .clk(clk), .rst(rst));
    dff mod14(.q(out[14]), .d(w1[14]), .clk(clk), .rst(rst));
    dff mod15(.q(out[15]), .d(w1[15]), .clk(clk), .rst(rst));
    
    mux2_1_16bit mod16(.out(w1), .in0(out), .in1(in), .sel(en));
endmodule
