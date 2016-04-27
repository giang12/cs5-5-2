module and16(in, out);
    input [15:0] in;
    output out;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14;

    and2 and2_0(.out(w1), .in1(in[0]), .in2(in[8]));
    and2 and2_1(.out(w2), .in1(in[1]), .in2(in[9]));
    and2 and2_2(.out(w3), .in1(in[2]), .in2(in[10]));
    and2 and2_3(.out(w4), .in1(in[3]), .in2(in[11]));
    and2 and2_4(.out(w5), .in1(in[4]), .in2(in[12]));
    and2 and2_5(.out(w6), .in1(in[5]), .in2(in[13]));
    and2 and2_6(.out(w7), .in1(in[6]), .in2(in[14]));
    and2 and2_7(.out(w8), .in1(in[7]), .in2(in[15]));
    
    
    and2 and2_8(.out(w9), .in1(w1), .in2(w2));
    and2 and2_9(.out(w10), .in1(w3), .in2(w4));
    and2 and2_10(.out(w11), .in1(w5), .in2(w6));
    and2 and2_11(.out(w12), .in1(w7), .in2(w8));

 
    and2 and2_12(.out(w13), .in1(w9), .in2(w10));
    and2 and2_13(.out(w14), .in1(w11), .in2(w12));

    
    and2 and2_14(.out(out), .in1(w13), .in2(w14));
endmodule
