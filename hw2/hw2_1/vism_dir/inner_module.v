/*  Author: Xuyi Ruan & Yudong Sun
 *  Description: inner module for shifter
 *  Module: mux2_1.v
 */

module inner_module(Out, InA, InB, InC, En, Op);
    input InA, InB, InC, En, Op;
    output Out;
    wire mux1_out;

    mux2_1 mod1(.InA(InB), .InB(InA), .S(Op), .Out(mux1_out));
    mux2_1 mod2(.InA(InC), .InB(mux1_out), .S(En), .Out(Out));

endmodule
