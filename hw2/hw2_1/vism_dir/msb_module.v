/*  Author: Xuyi Ruan & Yudong Sun
 *  Description: MSB module for shifter
 *  Module: mux2_1.v
 */

module msb_module(Out, InA, InB, InC, InD, En, Op);
    input InA, InB, InC, InD, En;
    input [1:0] Op;
    output Out;
    wire mux1_out, mux2_out;

    mux2_1 mod1(.InA(InB), .InB(InA), .S(Op[0]), .Out(mux1_out));
    mux2_1 mod2(.InA(mux1_out), .InB(InC), .S(Op[1]), .Out(mux2_out));
    mux2_1 mod3(.InA(InD), .InB(mux2_out), .S(En), .Out(Out));

endmodule
