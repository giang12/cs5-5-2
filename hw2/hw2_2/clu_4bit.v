module clu_4bit(PG, GG, CI, CO, P, G);
    input [3:0] P, G;
    input CI;
    output [3:0] CO;
    output PG, GG;
    wire w1, w2, w3 w4;
    wire c1, c2, c3 ,c4    
 
    wire w5, w6, w7, w8, w9, w10, w11, w12, w13, w14;

    assign CO[0] = c1;
    assign CO[1] = c2;
    assign CO[2] = c3;
    assign CO[3] = c4;

    and2 mod1(.in1(P[0]), .in2(CI), .out(w1));
    or2 mod2(.in1(G[0]), .in2(w1), .out(c1));
    
    and2 mod3(.in1(P[1]), .in2(c1), .out(w2));
    or2 mod4(.in1(G[1]), .in2(w2), .out(c2));

    and2 mod5(.in1(P[2]), .in2(c2), .out(w3));
    or2 mod6(.in1(G[2]), .in2(w3), .out(c3));

    and2 mod7(.in1(P[3]), .in2(c3), .out(w4));
    or2 mod8(.in1(G[3]), .in2(w4), .out(c4));

    
    and2 mod9(.in1(P[0]), .in2(P[1]), .out(w5));
    and2 mod10(.in1(P[2]), .in2(P[3]), .out(w6));
    and2 mod11(.in1(w5), .in2(w6), .out(PG));
   
    and2 mod12(.in1(G[2]), .in2(P[3]), .out(w7));

    and2 mod13(.in1(G[1]), .in2(P[3]), .out(w8));
    and2 mod14(.in1(w8), .in2(P[2]), .out(w9));

    and2 mod15(.in1(G[0]), .in2(P[3]), .out(w10));
    and2 mod16(.in1(P[2]), .in2(P[1]), .out(w11));
    and2 mod17(.in1(w10), .in2(w11), .out(w12));

       

    or2 mod8(.in1(G[3]), .in2(w7), .out(w13));
    or2 mod8(.in1(w9), .in2(w12), .out(w14));
    or2 mod8(.in1(w13), .in2(w14), .out(GG));


endmodule
