module cla_16bit(OUT, Ofl, Cout, A, B, CI, sign);
    input [15:0] A, B;
    input CI, sign;
    output [15:0] OUT;
    output Ofl;
    output Cout;
    wire [15:0] w1, w2, w3;
    wire w4, w5;    
    wire [15:0] sum;
    assign OUT = sum;
    assign Cout = w3;
    wire w6, w7, w8, w9, w10, w11, w12, w13, w14, w15;

    fulladder_16bit mod1(.S(sum), .P(w1), .G(w2), .A(A), .B(B), .CI({w3[14:0], CI}));
    clu_16bit mod2(.CO(w3), .CI(CI), .P(w1), .G(w2));
    
    not1 mod3(.in1(sign), .out(w4));
    and2 mod4(.in1(w4), .in2(w3[15]), .out(w5));
    
    not1 mod5(.in1(sum[15]), .out(w6));
    and2 mod6(.in1(sign), .in2(A[15]), .out(w7));
    and2 mod7(.in1(B[15]), .in2(w6), .out(w8));
    and2 mod8(.in1(w7), .in2(w8), .out(w9));

    not1 mod9(.in1(A[15]), .out(w10));
    not1 mod10(.in1(B[15]), .out(w11));
    and2 mod11(.in1(sign), .in2(w10), .out(w12));
    and2 mod12(.in1(w11), .in2(sum[15]), .out(w13));
    and2 mod13(.in1(w12), .in2(w13), .out(w14));

    or2 mod14(.in1(w5), .in2(w9), .out(w15));
    or2 mod15(.in1(w15), .in2(w14), .out(Ofl));

     
endmodule

