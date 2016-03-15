module mux4_1(Out, InA, InB, InC, InD, S);
    input InA, InB, InC, InD;
    input [1:0] S;
    output Out;
    wire mux1_out, mux2_out;

    mux2_1 mod1(.InA(InA), .InB(InB), .S(S[0]), .Out(mux1_out));
    mux2_1 mod2(.InA(InC), .InB(InD), .S(S[0]), .Out(mux2_out));
    mux2_1 mod3(.InA(mux1_out), .InB(mux2_out), .S(S[1]), .Out(Out));

endmodule
