module mux4_1_64bit(out, in0, in1, in2, in3, sel);
    output [63:0] out;
    input [63:0] in0, in1, in2, in3;
    input [1:0] sel;

    mux4_1_16bit mux0 (.out(out[15:0]), .sel(sel), .in0(in0[15:0]), .in1(in1[15:0]), .in2(in2[15:0]), .in3(in3[15:0]));
    mux4_1_16bit mux1 (.out(out[31:16]), .sel(sel), .in0(in0[31:16]), .in1(in1[31:16]), .in2(in2[31:16]), .in3(in3[31:16]));
    mux4_1_16bit mux2 (.out(out[47:32]), .sel(sel), .in0(in0[47:32]), .in1(in1[47:32]), .in2(in2[47:32]), .in3(in3[47:32]));
    mux4_1_16bit mux3 (.out(out[63:48]), .sel(sel), .in0(in0[63:48]), .in1(in1[63:48]), .in2(in2[63:48]), .in3(in3[63:48]));
 
endmodule
