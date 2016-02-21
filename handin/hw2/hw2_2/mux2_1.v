module mux2_1(InA, InB, S, Out);
    input InA, InB, S;
    output Out;
    wire S, S_n, w1, w2, w3, w4, w5;
    not1 mod1(.in1(S), .out(S_n));
    nand2 mod2(.in1(S_n), .in2(InA), .out(w1));
    nand2 mod3(.in1(S), .in2(InB), .out(w2));
    not1 mod4(.in1(w1), .out(w3));
    not1 mod5(.in1(w2), .out(w4));
    nor2 mod6(.in1(w3), .in2(w4), .out(w5));
    not1 mod7(.in1(w5), .out(Out));
endmodule
