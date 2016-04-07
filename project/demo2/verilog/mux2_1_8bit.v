module mux2_1_8bit(out, in0, in1, sel);
    input [7:0] in0, in1;
    input sel;
    output [7:0] out;
    
    mux2_1 mux0(.InA(in0[0]), .InB(in1[0]), .S(sel), .Out(out[0]));
    mux2_1 mux1(.InA(in0[1]), .InB(in1[1]), .S(sel), .Out(out[1]));
    mux2_1 mux2(.InA(in0[2]), .InB(in1[2]), .S(sel), .Out(out[2]));
    mux2_1 mux3(.InA(in0[3]), .InB(in1[3]), .S(sel), .Out(out[3]));
    mux2_1 mux4(.InA(in0[4]), .InB(in1[4]), .S(sel), .Out(out[4]));
    mux2_1 mux5(.InA(in0[5]), .InB(in1[5]), .S(sel), .Out(out[5]));
    mux2_1 mux6(.InA(in0[6]), .InB(in1[6]), .S(sel), .Out(out[6]));
    mux2_1 mux7(.InA(in0[7]), .InB(in1[7]), .S(sel), .Out(out[7]));
endmodule
