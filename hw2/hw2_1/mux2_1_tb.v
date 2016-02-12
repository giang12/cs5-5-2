`timescale 1ns/1ns

module mux2_1_tb();

reg InA, InB, Sel, clk;
wire Out;

mux2_1 iDUT(.InA(InA), .InB(InB), .S(Sel), .Out(Out));
always #20 clk = ~clk;
initial begin
	InA = 1'b0;
	InB = 1'b0;
	Sel = 1'b0;
	clk = 1'b0;
end
endmodule
