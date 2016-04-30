module fast_adder_wrapper (OUT, Ofl, Cout, A, B, CI, sign);
    input [15:0] A,B;
    input CI, sign;
    output Ofl; 
    output Cout;
    output [15:0] OUT; 
    fast_adder fast_adder0 (
                              .A(A),
                              .B(B),
                              .Cin(CI),
                              .S(OUT),
                              .Cout(Cout)
                           );

  assign Ofl = (sign == 1'b0) ? (Cout) : ( (A[15] == B[15]) ? ( B[15] == OUT[15] ? 1'b0 : 1'b1) : 1'b0 );
endmodule
