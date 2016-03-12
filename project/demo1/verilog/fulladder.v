module fulladder(S, P, G, InA, InB, Cin);
    input InA, InB, Cin;
    output S, P, G;
    wire w1;
    xor2 mod1(.in1(InB), .in2(Cin), .out(w1));
    xor2 mod2(.in1(InA), .in2(w1), .out(S));
    and2 mod3(.in1(InA), .in2(InB), .out(G));
    xor2 mod4(.in1(InA), .in2(InB), .out(P));
    //can also use or to implement P
endmodule
