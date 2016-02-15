module fulladder(S, Cout, InA, InB, Cin, P, G);
    input InA, InB, Cin;
    output S, P, G;
    wire w1, w2;
    xor2 mod1(.in1(InB), .in2(Cin), .out(w1));
    xor2 mod2(.in1(InA), .in2(w1), .out(S));
    nand2 mod7(.in1(InA), .in2(InB), .out(w2));
    not1 mod8(.in1(w2), .out(G));
    xor2 mod9 (.in1(InA), .in2(InB), .out(P));
    //can also use or to implement P
endmodule
