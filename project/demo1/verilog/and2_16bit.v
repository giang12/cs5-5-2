module and2_16bit(out, in1, in2);
    input [15:0] in1, in2;
    output [15:0] out;
    
    and2 and2_0(.out(out[0]), .in1(in1[0]), .in2(in2[0]));
    and2 and2_1(.out(out[1]), .in1(in1[1]), .in2(in2[1]));
    and2 and2_2(.out(out[2]), .in1(in1[2]), .in2(in2[2]));
    and2 and2_3(.out(out[3]), .in1(in1[3]), .in2(in2[3]));
    and2 and2_4(.out(out[4]), .in1(in1[4]), .in2(in2[4]));
    and2 and2_5(.out(out[5]), .in1(in1[5]), .in2(in2[5]));
    and2 and2_6(.out(out[6]), .in1(in1[6]), .in2(in2[6]));
    and2 and2_7(.out(out[7]), .in1(in1[7]), .in2(in2[7]));
    and2 and2_8(.out(out[8]), .in1(in1[8]), .in2(in2[8]));
    and2 and2_9(.out(out[9]), .in1(in1[9]), .in2(in2[9]));
    and2 and2_10(.out(out[10]), .in1(in1[10]), .in2(in2[10]));
    and2 and2_11(.out(out[11]), .in1(in1[11]), .in2(in2[11]));
    and2 and2_12(.out(out[12]), .in1(in1[12]), .in2(in2[12]));
    and2 and2_13(.out(out[13]), .in1(in1[13]), .in2(in2[13]));
    and2 and2_14(.out(out[14]), .in1(in1[14]), .in2(in2[14]));
    and2 and2_15(.out(out[15]), .in1(in1[15]), .in2(in2[15]));
endmodule
