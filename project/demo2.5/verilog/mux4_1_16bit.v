module mux4_1_16bit (out, sel, in0, in1, in2, in3);
    input [15:0] in0, in1, in2, in3;
    input [1:0] sel;
    output [15:0] out;
    
    mux4_1 mux0(.Out(out[0]), .InA(in0[0]), .InB(in1[0]), .InC(in2[0]), .InD(in3[0]), .S(sel));
    mux4_1 mux1(.Out(out[1]), .InA(in0[1]), .InB(in1[1]), .InC(in2[1]), .InD(in3[1]), .S(sel));
    mux4_1 mux2(.Out(out[2]), .InA(in0[2]), .InB(in1[2]), .InC(in2[2]), .InD(in3[2]), .S(sel));
    mux4_1 mux3(.Out(out[3]), .InA(in0[3]), .InB(in1[3]), .InC(in2[3]), .InD(in3[3]), .S(sel));
    mux4_1 mux4(.Out(out[4]), .InA(in0[4]), .InB(in1[4]), .InC(in2[4]), .InD(in3[4]), .S(sel));
    mux4_1 mux5(.Out(out[5]), .InA(in0[5]), .InB(in1[5]), .InC(in2[5]), .InD(in3[5]), .S(sel));
    mux4_1 mux6(.Out(out[6]), .InA(in0[6]), .InB(in1[6]), .InC(in2[6]), .InD(in3[6]), .S(sel));
    mux4_1 mux7(.Out(out[7]), .InA(in0[7]), .InB(in1[7]), .InC(in2[7]), .InD(in3[7]), .S(sel));
    mux4_1 mux8(.Out(out[8]), .InA(in0[8]), .InB(in1[8]), .InC(in2[8]), .InD(in3[8]), .S(sel));
    mux4_1 mux9(.Out(out[9]), .InA(in0[9]), .InB(in1[9]), .InC(in2[9]), .InD(in3[9]), .S(sel));
    mux4_1 mux10(.Out(out[10]), .InA(in0[10]), .InB(in1[10]), .InC(in2[10]), .InD(in3[10]), .S(sel));
    mux4_1 mux11(.Out(out[11]), .InA(in0[11]), .InB(in1[11]), .InC(in2[11]), .InD(in3[11]), .S(sel));
    mux4_1 mux12(.Out(out[12]), .InA(in0[12]), .InB(in1[12]), .InC(in2[12]), .InD(in3[12]), .S(sel));
    mux4_1 mux13(.Out(out[13]), .InA(in0[13]), .InB(in1[13]), .InC(in2[13]), .InD(in3[13]), .S(sel));
    mux4_1 mux14(.Out(out[14]), .InA(in0[14]), .InB(in1[14]), .InC(in2[14]), .InD(in3[14]), .S(sel));
    mux4_1 mux15(.Out(out[15]), .InA(in0[15]), .InB(in1[15]), .InC(in2[15]), .InD(in3[15]), .S(sel));
endmodule
