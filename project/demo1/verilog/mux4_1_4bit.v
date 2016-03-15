module mux4_1_4bit (out, sel, in0, in1, in2, in3);
    input [3:0] in0, in1, in2, in3;
    input [1:0] sel;
    output [3:0] out;
    
    mux4_1 mux0(.Out(out[0]), .InA(in0[0]), .InB(in1[0]), .InC(in2[0]), .InD(in3[0]), .S(sel));
    mux4_1 mux1(.Out(out[1]), .InA(in0[1]), .InB(in1[1]), .InC(in2[1]), .InD(in3[1]), .S(sel));
    mux4_1 mux2(.Out(out[2]), .InA(in0[2]), .InB(in1[2]), .InC(in2[2]), .InD(in3[2]), .S(sel));
    mux4_1 mux3(.Out(out[3]), .InA(in0[3]), .InB(in1[3]), .InC(in2[3]), .InD(in3[3]), .S(sel));

endmodule
