/*
 * Author: Xuyi Ruan & Yudong Sun
 * Description: 16bit not gate
 * Modules: 
 *  not1.v
 *
 */

module not1_16bit(out, in);
    input [15:0] in;
    output [15:0] out;

    not1 not_0(.in1(in[0]), .out(out[0]));
    not1 not_1(.in1(in[1]), .out(out[1]));
    not1 not_2(.in1(in[2]), .out(out[2]));
    not1 not_3(.in1(in[3]), .out(out[3]));
    not1 not_4(.in1(in[4]), .out(out[4]));
    not1 not_5(.in1(in[5]), .out(out[5]));
    not1 not_6(.in1(in[6]), .out(out[6]));
    not1 not_7(.in1(in[7]), .out(out[7]));
    not1 not_8(.in1(in[8]), .out(out[8]));
    not1 not_9(.in1(in[9]), .out(out[9]));
    not1 not_10(.in1(in[10]), .out(out[10]));
    not1 not_11(.in1(in[11]), .out(out[11]));
    not1 not_12(.in1(in[12]), .out(out[12]));
    not1 not_13(.in1(in[13]), .out(out[13]));
    not1 not_14(.in1(in[14]), .out(out[14]));
    not1 not_15(.in1(in[15]), .out(out[15]));

endmodule
