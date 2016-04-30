module fast_adder(A,B, Cin, S, Cout);

    input [15:0] A,B;
    input Cin;
    output [15:0] S;
    output Cout;
    
    wire adder0_p, adder1_p, adder2_p, adder3_p;
    wire adder0_g, adder1_g, adder2_g, adder3_g;
    wire adder0_cin, adder1_cin, adder2_cin, adder3_cin;
    assign adder0_cin = Cin;
    wire c4_dump;
    wire cla0_pg, cla0_gg;
    fulladder fulladder0 (.S(S[0]), .P(adder0_p), .G(adder0_g), .InA(A[0]), .InB(B[0]), .Cin(adder0_cin));
    fulladder fulladder1 (.S(S[1]), .P(adder1_p), .G(adder1_g), .InA(A[1]), .InB(B[1]), .Cin(adder1_cin));
    fulladder fulladder2 (.S(S[2]), .P(adder2_p), .G(adder2_g), .InA(A[2]), .InB(B[2]), .Cin(adder2_cin));
    fulladder fulladder3 (.S(S[3]), .P(adder3_p), .G(adder3_g), .InA(A[3]), .InB(B[3]), .Cin(adder3_cin));
    carry_look_ahead cla_4b_0 ( .c0(Cin),
                                      .p0(adder0_p),
                                      .g0(adder0_g), 
                                      .p1(adder1_p), 
                                      .g1(adder1_g), 
                                      .p2(adder2_p), 
                                      .g2(adder2_g),
                                      .p3(adder3_p), 
                                      .g3(adder3_g), 
                                      .c1(adder1_cin), 
                                      .c2(adder2_cin), 
                                      .c3(adder3_cin),  
                                      .c4(c4_dump),
                                      .pg(cla0_pg), 
                                      .gg(cla0_gg)
                                    );
 

    
    wire adder4_p, adder5_p, adder6_p, adder7_p;
    wire adder4_g, adder5_g, adder6_g, adder7_g;
    wire adder4_cin, adder5_cin, adder6_cin, adder7_cin;
    wire cla1_pg, cla1_gg; 
    wire cla1_c0;
    fulladder fulladder4 (.S(S[4]), .P(adder4_p), .G(adder4_g), .InA(A[4]), .InB(B[4]), .Cin(cla1_c0));
    fulladder fulladder5 (.S(S[5]), .P(adder5_p), .G(adder5_g), .InA(A[5]), .InB(B[5]), .Cin(adder5_cin));
    fulladder fulladder6 (.S(S[6]), .P(adder6_p), .G(adder6_g), .InA(A[6]), .InB(B[6]), .Cin(adder6_cin));
    fulladder fulladder7 (.S(S[7]), .P(adder7_p), .G(adder7_g), .InA(A[7]), .InB(B[7]), .Cin(adder7_cin));
    carry_look_ahead cla_4b_1 ( .c0(cla1_c0), 
                                      .p0(adder4_p),
                                      .g0(adder4_g), 
                                      .p1(adder5_p), 
                                      .g1(adder5_g), 
                                      .p2(adder6_p), 
                                      .g2(adder6_g),
                                      .p3(adder7_p), 
                                      .g3(adder7_g), 
                                      .c1(adder5_cin), 
                                      .c2(adder6_cin), 
                                      .c3(adder7_cin),  
                                      .c4(c4_dump),
                                      .pg(cla1_pg), 
                                      .gg(cla1_gg)
                                    );
    
    wire adder8_p, adder9_p, adder10_p, adder11_p;
    wire adder8_g, adder9_g, adder10_g, adder11_g;
    wire adder8_cin, adder9_cin, adder10_cin, adder11_cin;
    wire cla2_pg, cla2_gg;
    wire cla2_c0;
    fulladder fulladder8 (.S(S[8]), .P(adder8_p), .G(adder8_g), .InA(A[8]), .InB(B[8]), .Cin(cla2_c0));
    fulladder fulladder9 (.S(S[9]), .P(adder9_p), .G(adder9_g), .InA(A[9]), .InB(B[9]), .Cin(adder9_cin));
    fulladder fulladder10 (.S(S[10]), .P(adder10_p), .G(adder10_g), .InA(A[10]), .InB(B[10]), .Cin(adder10_cin));
    fulladder fulladder11 (.S(S[11]), .P(adder11_p), .G(adder11_g), .InA(A[11]), .InB(B[11]), .Cin(adder11_cin));
    carry_look_ahead cla_4b_2 ( .c0(cla2_c0), 
                                      .p0(adder8_p),
                                      .g0(adder8_g), 
                                      .p1(adder9_p), 
                                      .g1(adder9_g), 
                                      .p2(adder10_p), 
                                      .g2(adder10_g),
                                      .p3(adder11_p), 
                                      .g3(adder11_g), 
                                      .c1(adder9_cin), 
                                      .c2(adder10_cin), 
                                      .c3(adder11_cin),  
                                      .c4(c4_dump),
                                      .pg(cla2_pg), 
                                      .gg(cla2_gg)
                                    );
 
    wire adder12_p, adder13_p, adder14_p, adder15_p;
    wire adder12_g, adder13_g, adder14_g, adder15_g;
    wire adder12_cin, adder13_cin, adder14_cin, adder15_cin;
    wire cla3_pg, cla3_gg;
    wire cla3_c0;
    fulladder fulladder12 (.S(S[12]), .P(adder12_p), .G(adder12_g), .InA(A[12]), .InB(B[12]), .Cin(cla3_c0));
    fulladder fulladder13 (.S(S[13]), .P(adder13_p), .G(adder13_g), .InA(A[13]), .InB(B[13]), .Cin(adder13_cin));
    fulladder fulladder14 (.S(S[14]), .P(adder14_p), .G(adder14_g), .InA(A[14]), .InB(B[14]), .Cin(adder14_cin));
    fulladder fulladder15 (.S(S[15]), .P(adder15_p), .G(adder15_g), .InA(A[15]), .InB(B[15]), .Cin(adder15_cin));
    carry_look_ahead cla_4b_3 ( .c0(cla3_c0), 
                                      .p0(adder12_p),
                                      .g0(adder12_g), 
                                      .p1(adder13_p), 
                                      .g1(adder13_g), 
                                      .p2(adder14_p), 
                                      .g2(adder14_g),
                                      .p3(adder15_p), 
                                      .g3(adder15_g), 
                                      .c1(adder13_cin), 
                                      .c2(adder14_cin), 
                                      .c3(adder15_cin),  
                                      .c4(c4_dump),
                                      .pg(cla3_pg), 
                                      .gg(cla3_gg)
                                    );
 
  
   wire top_level_pg_dump, top_level_gg_dump;
   carry_look_ahead top_level_cla ( 
                                      .c0(Cin), 
                                      .p0(cla0_pg),
                                      .g0(cla0_gg), 
                                      .p1(cla1_pg), 
                                      .g1(cla1_gg), 
                                      .p2(cla2_pg), 
                                      .g2(cla2_gg),
                                      .p3(cla3_pg), 
                                      .g3(cla3_gg), 
                                      .c1(cla1_c0), 
                                      .c2(cla2_c0), 
                                      .c3(cla3_c0),  
                                      .c4(Cout),
                                      .pg(top_level_pg_dump), 
                                      .gg(top_level_gg_dump)
                                    );
 


endmodule
