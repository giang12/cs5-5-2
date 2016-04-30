module zero_detect(out, in);
    input [15:0] in;
    output out;
//    assign out = (in == 16'b0000_0000_0000_0000) ? 1'b1 : 1'b0;
    wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14;
    
    assign out = ~w14;
     
    or2 mod0(.out(w0), .in1(in[0]), .in2(in[8]));
    or2 mod1(.out(w1), .in1(in[1]), .in2(in[9]));
    or2 mod2(.out(w2), .in1(in[2]), .in2(in[10]));
    or2 mod3(.out(w3), .in1(in[3]), .in2(in[11]));
    or2 mod4(.out(w4), .in1(in[4]), .in2(in[12]));
    or2 mod5(.out(w5), .in1(in[5]), .in2(in[13]));
    or2 mod6(.out(w6), .in1(in[6]), .in2(in[14]));
    or2 mod7(.out(w7), .in1(in[7]), .in2(in[15]));

    
    or2 mod8(.out(w8), .in1(w0), .in2(w4));
    or2 mod9(.out(w9), .in1(w1), .in2(w5));
    or2 mod10(.out(w10), .in1(w2), .in2(w6));
    or2 mod11(.out(w11), .in1(w3), .in2(w7));

    
    or2 mod12(.out(w12), .in1(w8), .in2(w10));
    or2 mod13(.out(w13), .in1(w9), .in2(w11));
    
    or2 mod14(.out(w14), .in1(w12), .in2(w13));

endmodule
