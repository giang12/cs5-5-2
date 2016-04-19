/* $Author: karu $ */
/* $LastChangedDate: 2009-04-24 09:28:13 -0500 (Fri, 24 Apr 2009) $ */
/* $Rev: 77 $ */

module mem_system(/*AUTOARG*/
   // Outputs
   DataOut, Done, Stall, CacheHit, err,
   // Inputs
   Addr, DataIn, Rd, Wr, createdump, clk, rst
   );
   
    input [15:0] Addr;
    input [15:0] DataIn;
    input        Rd;
    input        Wr;
    input        createdump;
    input        clk;
    input        rst;
    
    output [15:0] DataOut;
    output Done;
    output Stall;
    output CacheHit;
    output err;

    
    wire cache_err, mem_err;
    assign err = cache_err | mem_err;
    
    
    // phrase adress
    wire[4:0] tag_in;
    wire[7:0] index;
    wire[2:0] offset;
    assign tag_in = Addr[15:11];
    assign index = Addr[10:3];
    assign offset = Addr[2:0];

    wire[15:0] data_in_cache;

    // state regsiter
    wire[3:0] nxt_state, curr_state;


    // mem
    wire[15:0] data_out_mem;
    wire[3:0] busy_mem_out;
    wire busy;
    assign busy =   busy_mem_out[0] | busy_mem_out[1] | 
                    busy_mem_out[2] | busy_mem_out[3];


    // cache
    wire hit, dirty, valid;


    // control logic
    wire write, comp, enable;
    wire wr, rd;

   /* data_mem = 1, inst_mem = 0 *
    * needed for cache parameter */
    parameter mem_type = 0;
    cache (0 + memtype) c0( // Outputs
                            .tag_out              (),
                            .data_out             (),
                            .hit                  (hit),
                            .dirty                (dirty),
                            .valid                (valid),
                            .err                  (cache_err),
                            // Inputs
                            .enable               (enable),
                            .clk                  (clk),
                            .rst                  (rst),
                            .createdump           (createdump),
                            .tag_in               (tag_in),
                            .index                (index),
                            .offset               (offset),
                            .data_in              (data_in_cache),
                            .comp                 (comp),
                            .write                (write),
                            .valid_in             ());

   four_bank_mem mem(       // Outputs
                            .data_out          (data_out_mem),
                            .stall             (Stall),
                            .busy              (busy_mem_out),
                            .err               (mem_err),
                            // Inputs
                            .clk               (clk),
                            .rst               (rst),
                            .createdump        (createdump),
                            .addr              (),
                            .data_in           (),
                            .wr                (wr),
                            .rd                (rd));

   
    // your code here

    statelogic fsm_logic( 
                            // outputs
                            .next_state(nxt_state), 
                            // to mem
                            .wr(wr), 
                            .rd(rd),
                            // to cache
                            .write(write), 
                            .comp(comp),
                            .enable(enable),
                            // inputs
                            .state(curr_state), 
                            // from mem_system
                            .Rd(Rd), 
                            .Wr(Wr),
                            .busy(busy),
                            // from cache
                            .valid(valid), 
                            .dirty(dirty), 
                            .hit(hit));
      

    statereg state_reg  (   // output
                            .state(curr_state), 
                            // input
                            .next_state(nxt_state), 
                            .Clk(clk), 
                            .Reset(rst));


    
    mux2_1_16bit mux0    (  .out(data_in_cache), 
                            .in0(data_out_mem), 
                            .in1(DataIn), 
                            .sel(comp));
   
endmodule // mem_system

// DUMMY LINE FOR REV CONTROL :9:
