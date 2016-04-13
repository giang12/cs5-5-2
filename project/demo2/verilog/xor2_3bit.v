module xor2_3bit(out, in1, in2);
    input [2:0] in1, in2;
    output [2:0] out;
    
    xor2 xor2_0(.out(out[0]), .in1(in1[0]), .in2(in2[0]));
    xor2 xor2_1(.out(out[1]), .in1(in1[1]), .in2(in2[1]));
    xor2 xor2_2(.out(out[2]), .in1(in1[2]), .in2(in2[2]));

endmodule
