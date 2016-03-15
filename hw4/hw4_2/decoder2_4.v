module decoder2_4(out, in);
    input [1:0] in;
    output [3:0] out;
    
    and2 mod0(.out(out[0]), .in1(~in[0]), .in2(~in[1]));
    and2 mod1(.out(out[1]), .in1(in[0]), .in2(~in[1]));
    and2 mod2(.out(out[2]), .in1(~in[0]), .in2(in[1]));
    and2 mod3(.out(out[3]), .in1(in[0]), .in2(in[1]));

endmodule

