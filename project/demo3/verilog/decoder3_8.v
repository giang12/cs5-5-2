module decoder3_8(out, in);
    input [2:0] in;
    output [7:0] out;
    
    and3 mod0(.out(out[0]), .in1(~in[0]), .in2(~in[1]), .in3(~in[2]));
    and3 mod1(.out(out[1]), .in1(in[0]), .in2(~in[1]), .in3(~in[2]));
    and3 mod2(.out(out[2]), .in1(~in[0]), .in2(in[1]), .in3(~in[2]));
    and3 mod3(.out(out[3]), .in1(in[0]), .in2(in[1]), .in3(~in[2]));
    and3 mod4(.out(out[4]), .in1(~in[0]), .in2(~in[1]), .in3(in[2]));
    and3 mod5(.out(out[5]), .in1(in[0]), .in2(~in[1]), .in3(in[2]));
    and3 mod6(.out(out[6]), .in1(~in[0]), .in2(in[1]), .in3(in[2]));
    and3 mod7(.out(out[7]), .in1(in[0]), .in2(in[1]), .in3(in[2]));
endmodule

