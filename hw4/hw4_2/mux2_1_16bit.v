module mux2_1_16bit(out, in0, in1, sel);
    input [15:0] in0, in1;
    input sel;
    output [15:0] out;
    
    mux2_1 mux0(.InA(in0[0]), .InB(in1[0]), .S(sel), .Out(out[0]));
    mux2_1 mux1(.InA(in0[1]), .InB(in1[1]), .S(sel), .Out(out[1]));
    mux2_1 mux2(.InA(in0[2]), .InB(in1[2]), .S(sel), .Out(out[2]));
    mux2_1 mux3(.InA(in0[3]), .InB(in1[3]), .S(sel), .Out(out[3]));
    mux2_1 mux4(.InA(in0[4]), .InB(in1[4]), .S(sel), .Out(out[4]));
    mux2_1 mux5(.InA(in0[5]), .InB(in1[5]), .S(sel), .Out(out[5]));
    mux2_1 mux6(.InA(in0[6]), .InB(in1[6]), .S(sel), .Out(out[6]));
    mux2_1 mux7(.InA(in0[7]), .InB(in1[7]), .S(sel), .Out(out[7]));
    mux2_1 mux8(.InA(in0[8]), .InB(in1[8]), .S(sel), .Out(out[8]));
    mux2_1 mux9(.InA(in0[9]), .InB(in1[9]), .S(sel), .Out(out[9]));
    mux2_1 mux10(.InA(in0[10]), .InB(in1[10]), .S(sel), .Out(out[10]));
    mux2_1 mux11(.InA(in0[11]), .InB(in1[11]), .S(sel), .Out(out[11]));
    mux2_1 mux12(.InA(in0[12]), .InB(in1[12]), .S(sel), .Out(out[12]));
    mux2_1 mux13(.InA(in0[13]), .InB(in1[13]), .S(sel), .Out(out[13]));
    mux2_1 mux14(.InA(in0[14]), .InB(in1[14]), .S(sel), .Out(out[14]));
    mux2_1 mux15(.InA(in0[15]), .InB(in1[15]), .S(sel), .Out(out[15]));
endmodule
