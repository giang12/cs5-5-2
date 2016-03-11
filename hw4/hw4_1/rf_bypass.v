/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module rf_bypass (
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

   wire [15:0] rf_read1data, rf_read2data;
   wire [2:0] w0, w1;
   wire w2, w3, w2_n, w3_n;
   wire bypass1sel, bypass2sel;
   // your code
   rf rf0 (
           // Outputs
           .read1data(rf_read1data), 
           .read2data(rf_read2data), 
           .err(err),
           // Inputs
           .clk(clk), 
           .rst(rst), 
           .read1regsel(read1regsel), 
           .read2regsel(read2regsel), 
           .writeregsel(writeregsel), 
           .writedata(writedata), 
           .write(write)
           );
    
    
    // initialize 2x 16 bit mux
    mux2_1_16bit mux0(.out(read1data), .in0(rf_read1data), .in1(writedata), .sel(bypass1sel));
    mux2_1_16bit mux1(.out(read2data), .in0(rf_read2data), .in1(writedata), .sel(bypass2sel));
    // initialize 2x xor2_3bit
    xor2_3bit xor0(.out(w0[0]), .in1(writeregsel[0]), .in2(read1regsel[0]));
    xor2_3bit xor1(.out(w0[1]), .in1(writeregsel[1]), .in2(read1regsel[1]));
    xor2_3bit xor2(.out(w0[2]), .in1(writeregsel[2]), .in2(read1regsel[2]));

    xor2_3bit xor3(.out(w1[0]), .in1(writeregsel[0]), .in2(read2regsel[0]));
    xor2_3bit xor4(.out(w1[1]), .in1(writeregsel[1]), .in2(read2regsel[1]));
    xor2_3bit xor5(.out(w1[2]), .in1(writeregsel[2]), .in2(read2regsel[2]));
    // initialize 2x or3
    
    or3 or_0(.out(w2), .in1(w0[0]), .in2(w0[1]), .in3(w0[2]));
    or3 or_1(.out(w3), .in1(w1[0]), .in2(w1[1]), .in3(w1[2]));
    // initialize 2x not
    not1 not_0(.in1(w2), .out(w2_n));
    not1 not_1(.in1(w3), .out(w3_n));
    // initialize 2x and2
    and2 and_0(.out(bypass1sel), .in1(write), .in2(w2_n));
    and2 and_1(.out(bypass2sel), .in1(write), .in2(w3_n));

endmodule
// DUMMY LINE FOR REV CONTROL :1:
