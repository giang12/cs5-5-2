module rippleadder_4bit(S, CO, A, B, CI);
input [3:0] A, B;
input CI;
output [3:0] S;
output CO;
wire c1, c2, c3;

fulladder adder1(.S(S[0]), .Cout(c1), .InA(A[0]), .InB(B[0]), .Cin(CI));
fulladder adder2(.S(S[1]), .Cout(c2), .InA(A[1]), .InB(B[1]), .Cin(c1));
fulladder adder3(.S(S[2]), .Cout(c3), .InA(A[2]), .InB(B[2]), .Cin(c2));
fulladder adder4(.S(S[3]), .Cout(CO), .InA(A[3]), .InB(B[3]), .Cin(c3));

endmodule
