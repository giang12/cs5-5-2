module fulladder(S, Cout, InA, InB, Cin);
    input InA, InB, Cin;
    output S, Cout;
    wire w1, w2, w3, w4;

    xor2 mod1(.in1(InB), .in2(Cin), .out(w1));
    xor2 mod2(.in1(InA), .in2(w1), .out(S));
    nand2 mod3(.in1(InB), .in2(Cin), .out(w2));
    nand2 mod4(.in1(InB), .in2(InA), .out(w3));
    nand2 mod5(.in1(Cin), .in2(InA), .out(w4));
    nand3 mod6(.in1(w2), .in2(w3), .in3(w4), .out(Cout));

endmodule
