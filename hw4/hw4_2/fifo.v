/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module fifo(/*AUTOARG*/
   // Outputs
   data_out, fifo_empty, fifo_full, err,
   // Inputs
   data_in, data_in_valid, pop_fifo, clk, rst
   );
   input [63:0] data_in;
   input        data_in_valid;
   input        pop_fifo;

   input        clk;
   input        rst;
   output [63:0] data_out;
   output        fifo_empty;
   output        fifo_full;
   output        err;

   //your code here
   wire [2:0] state;
   wire [2:0] next_state;
   wire [1:0] wp;
   wire [1:0] rp;

    fifo_ctr fifo_ctr(    .clk(clk), 
                          .rst(rst), 
                          .data_in_valid(data_in_valid), 
                          .pop_fifo(pop_fifo), 
                          .fifo_empty(fifo_empty), 
                          .fifo_full(fifo_full),
                          .rp(rp), 
                          .wp(wp),
                          .err(err));
    
    statereg state_reg(   .state(state), 
                          .next_state(next_state), 
                          .Clk(clk), 
                          .Reset(rst));

    fifo_reg fifo_reg(    .data_out(data_out), 
                          .data_in(data_in), 
                          .write_ptr(wp), 
                          .read_ptr(rp),
                          .data_in_valid(data_in_valid),
                          .fifo_full(fifo_full),
                          .fifo_empty(fifo_empty), 
                          .rst(rst), 
                          .clk(clk));



endmodule
// DUMMY LINE FOR REV CONTROL :1:
