module fulladder_16bit(S, P, G, A, B, CI);
    input [15:0] A, B, CI;
    output [15:0] S, P, G;

    
    fulladder fulladder0 (.S(S[0]), .P(P[0]), .G(G[0]), .InA(A[0]), .InB(B[0]), .Cin(CI[0]));
    fulladder fulladder1 (.S(S[1]), .P(P[1]), .G(G[1]), .InA(A[1]), .InB(B[1]), .Cin(CI[1]));
    fulladder fulladder2 (.S(S[2]), .P(P[2]), .G(G[2]), .InA(A[2]), .InB(B[2]), .Cin(CI[2]));
    fulladder fulladder3 (.S(S[3]), .P(P[3]), .G(G[3]), .InA(A[3]), .InB(B[3]), .Cin(CI[3]));
    fulladder fulladder4 (.S(S[4]), .P(P[4]), .G(G[4]), .InA(A[4]), .InB(B[4]), .Cin(CI[4]));
    fulladder fulladder5 (.S(S[5]), .P(P[5]), .G(G[5]), .InA(A[5]), .InB(B[5]), .Cin(CI[5]));
    fulladder fulladder6 (.S(S[6]), .P(P[6]), .G(G[6]), .InA(A[6]), .InB(B[6]), .Cin(CI[6]));
    fulladder fulladder7 (.S(S[7]), .P(P[7]), .G(G[7]), .InA(A[7]), .InB(B[7]), .Cin(CI[7]));
    fulladder fulladder8 (.S(S[8]), .P(P[8]), .G(G[8]), .InA(A[8]), .InB(B[8]), .Cin(CI[8]));
    fulladder fulladder9 (.S(S[9]), .P(P[9]), .G(G[9]), .InA(A[9]), .InB(B[9]), .Cin(CI[9]));
    fulladder fulladder10 (.S(S[10]), .P(P[10]), .G(G[10]), .InA(A[10]), .InB(B[10]), .Cin(CI[10]));
    fulladder fulladder11 (.S(S[11]), .P(P[11]), .G(G[11]), .InA(A[11]), .InB(B[11]), .Cin(CI[11]));
    fulladder fulladder12 (.S(S[12]), .P(P[12]), .G(G[12]), .InA(A[12]), .InB(B[12]), .Cin(CI[12]));
    fulladder fulladder13 (.S(S[13]), .P(P[13]), .G(G[13]), .InA(A[13]), .InB(B[13]), .Cin(CI[13]));
    fulladder fulladder14 (.S(S[14]), .P(P[14]), .G(G[14]), .InA(A[14]), .InB(B[14]), .Cin(CI[14]));
    fulladder fulladder15 (.S(S[15]), .P(P[15]), .G(G[15]), .InA(A[15]), .InB(B[15]), .Cin(CI[15]));
   
    
     
endmodule
