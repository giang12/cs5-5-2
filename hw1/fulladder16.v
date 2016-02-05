module fulladder16(SUM, CO, A, B);
    input [15:0]A, B;
    output [15:0]SUM;
    output CO;
    wire c1, c2, c3;

    rippleadder_4bit adder1(.S(SUM[3:0]), .CO(c1), .A(A[3:0]), .B(B[3:0]), .CI(0));
    rippleadder_4bit adder2(.S(SUM[7:4]), .CO(c2), .A(A[7:4]), .B(B[7:4]), .CI(c1));
    rippleadder_4bit adder3(.S(SUM[11:8]), .CO(c3), .A(A[11:8]), .B(B[11:8]), .CI(c2));
    rippleadder_4bit adder4(.S(SUM[15:12]), .CO(CO), .A(A[15:12]), .B(B[15:12]), .CI(c3));

endmodule
