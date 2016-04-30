module mux8_1_16bit (out, sel, in0, in1, in2, in3, in4, in5, in6, in7);
    input [2:0] sel;
    input [15:0] in0, in1, in2, in3, in4, in5, in6, in7;
    output [15:0] out;
    wire [15:0] w1, w2;
    mux4_1_16bit mux4_1_1(.out(w1), .sel(sel[1:0]), .in0(in0), .in1(in1), .in2(in2), .in3(in3));
    mux4_1_16bit mux4_1_2(.out(w2), .sel(sel[1:0]), .in0(in4), .in1(in5), .in2(in6), .in3(in7));
    mux2_1_16bit mux2_1(.out(out), .in0(w1), .in1(w2), .sel(sel[2]));
endmodule

