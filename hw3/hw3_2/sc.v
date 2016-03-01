/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */

module sc( clk, rst, ctr_rst, out, err);
   input clk;
   input rst;
   input ctr_rst;
   output [2:0] out;
   output err;

   // your code
   wire [2:0] state;
   wire [2:0] next_state;

   statereg state_reg(
     .state(state),
     .next_state(next_state),
     .Clk(clk),
     .Reset(rst)
   );

   statelogic st_logic(
     .next_state(next_state),
     .Out(out),
     .state(state),
     .InA(ctr_rst)
     .err(err)
   );


endmodule

// DUMMY LINE FOR REV CONTROL :1:
