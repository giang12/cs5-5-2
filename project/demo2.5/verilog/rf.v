/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module rf (
           // Outputs
           read1data, read2data, err,
           // Inputs
           clk, rst, read1regsel, read2regsel, writeregsel, writedata, write
           );
   input clk, rst;
   input [2:0] read1regsel;
   input [2:0] read2regsel;
   input [2:0] writeregsel;
   input [15:0] writedata;
   input        write;

   output [15:0] read1data;
   output [15:0] read2data;
   output        err;

   wire [7:0] decode_out;
   wire w0, w1, w2, w3, w4, w5, w6, w7;
   wire [15:0]  dff_out_0,
                dff_out_1,
                dff_out_2,
                dff_out_3,
                dff_out_4,
                dff_out_5,
                dff_out_6,
                dff_out_7;

   // your code
   // write portion(left) of register file
   decoder3_8 decoder_0(.out(decode_out), .in(writeregsel));
   
   and2 and2_0(.out(w0), .in1(write), .in2(decode_out[0]));
   and2 and2_1(.out(w1), .in1(write), .in2(decode_out[1]));
   and2 and2_2(.out(w2), .in1(write), .in2(decode_out[2]));
   and2 and2_3(.out(w3), .in1(write), .in2(decode_out[3]));
   and2 and2_4(.out(w4), .in1(write), .in2(decode_out[4]));
   and2 and2_5(.out(w5), .in1(write), .in2(decode_out[5]));
   and2 and2_6(.out(w6), .in1(write), .in2(decode_out[6]));
   and2 and2_7(.out(w7), .in1(write), .in2(decode_out[7]));
  
   dff_16bit dff_16bit_0(.out(dff_out_0), .in(writedata), .en(w0), .rst(rst), .clk(clk));
   dff_16bit dff_16bit_1(.out(dff_out_1), .in(writedata), .en(w1), .rst(rst), .clk(clk));
   dff_16bit dff_16bit_2(.out(dff_out_2), .in(writedata), .en(w2), .rst(rst), .clk(clk));
   dff_16bit dff_16bit_3(.out(dff_out_3), .in(writedata), .en(w3), .rst(rst), .clk(clk));
   dff_16bit dff_16bit_4(.out(dff_out_4), .in(writedata), .en(w4), .rst(rst), .clk(clk));
   dff_16bit dff_16bit_5(.out(dff_out_5), .in(writedata), .en(w5), .rst(rst), .clk(clk));
   dff_16bit dff_16bit_6(.out(dff_out_6), .in(writedata), .en(w6), .rst(rst), .clk(clk));
   dff_16bit dff_16bit_7(.out(dff_out_7), .in(writedata), .en(w7), .rst(rst), .clk(clk));

   // read portion(right) of register file
   mux8_1_16bit mux8_1_0(.out(read1data), 
                         .sel(read1regsel), 
                         .in0(dff_out_0), 
                         .in1(dff_out_1), 
                         .in2(dff_out_2), 
                         .in3(dff_out_3), 
                         .in4(dff_out_4), 
                         .in5(dff_out_5), 
                         .in6(dff_out_6), 
                         .in7(dff_out_7)
                         ); 
   mux8_1_16bit mux8_1_1(.out(read2data), 
                         .sel(read2regsel), 
                         .in0(dff_out_0), 
                         .in1(dff_out_1), 
                         .in2(dff_out_2), 
                         .in3(dff_out_3), 
                         .in4(dff_out_4), 
                         .in5(dff_out_5), 
                         .in6(dff_out_6), 
                         .in7(dff_out_7)
                         ); 

endmodule
// DUMMY LINE FOR REV CONTROL :1:
