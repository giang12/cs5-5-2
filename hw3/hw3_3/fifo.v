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
    statelogic fifo_logic(.data_in_valid_ctr(),
                          .write_ptr(), 
                          .read_ptr(), 
                          .next_state(), 
                          .fifo_empty(), 
                          .fifo_full(), 
                          .err(), 
                          .state(), 
                          .data_in_valid(), 
                          .pop_fifo());
    statereg state_reg(   .state(), 
                          .next_state(), 
                          .Clk(), 
                          .Reset());
    fifo_reg fifo_reg(    .data_out(), 
                          .data_in(), 
                          .write_ptr(), 
                          .read_ptr(), 
                          .data_in_valid(),
                          .fifo_full(),
                          .fifo_empty(), 
                          .rst(), 
                          .clk());



endmodule
// DUMMY LINE FOR REV CONTROL :1:
