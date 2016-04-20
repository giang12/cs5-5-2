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

    wire[15:0] data_in_cache;

    // state regsiter
    wire[3:0] nxt_state, curr_state;
    

wire WR; 
    assign WR = (Wr == 1'b1) ? 1 : WR;


    // mem
    wire stall;
    wire[15:0] mem_addr;
    wire[15:0] data_out_mem;
    wire[3:0] busy_mem_out;
    wire[1:0] mem_offset;
    wire busy;
    assign busy =   busy_mem_out[0] | busy_mem_out[1] | 
                    busy_mem_out[2] | busy_mem_out[3];
    

    // cache
    wire[1:0] cache_offset;
    wire hit, dirty, valid;
    wire[15:0] cache_addr;
    wire[15:0] cache_data_out;
    wire[4:0] tag_out;

    // control logic
    wire write, comp, enable;
    wire wr, rd;

    wire cache_stall;
    wire potentialHit;
    
    assign mem_addr =   (comp == 1) ? Addr : 
                        (comp == 0 && write == 0) ? {tag_out,Addr[10:3],mem_offset,Addr[0]} :
                        {Addr[15:3],mem_offset,Addr[0]};
    assign cache_addr = (comp == 1) ? Addr: {Addr[15:3],cache_offset,Addr[0]};

    assign DataOut = cache_data_out;

    
    assign tag_in = cache_addr[15:11];
    assign index = cache_addr[10:3];
    assign offset = cache_addr[2:0];
    
    assign CacheHit = hit & valid & potentialHit; 
    assign Done = hit & valid;
    //assign Done = 1'b1;
    assign Stall = cache_stall; //TODO: cache stall???
    
     
   /* data_mem = 1, inst_mem = 0 *
    * needed for cache parameter */
    parameter mem_type = 0;
    cache #(0 + mem_type) c0( // Outputs
                            .tag_out              (tag_out),
                            .data_out             (cache_data_out),
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
                            .valid_in             (1'b1)); //TODO: ???

   four_bank_mem mem(       // Outputs
                            .data_out          (data_out_mem),
                            .stall             (stall),
                            .busy              (busy_mem_out),
                            .err               (mem_err),
                            // Inputs
                            .clk               (clk),
                            .rst               (rst),
                            .createdump        (createdump),
                            .addr              (mem_addr),
                            .data_in           (cache_data_out),
                            .wr                (wr),
                            .rd                (rd));

   
    // your code here

    statelogic fsm_logic( 
                            // outputs
                            .potentialHit(potentialHit),
                            .next_state(nxt_state), 
                            // to mem
                            .mem_offset(mem_offset),
                            .wr(wr), 
                            .rd(rd),
                            // to cache
                            .cache_offset(cache_offset),
                            .write(write), 
                            .comp(comp),
                            .enable(enable),
                            .cache_stall(cache_stall),
                            // inputs
                            .state(curr_state), 
                            // from mem_system
                            .Rd(Rd), 
                            //.Rd(stable_Rd), 
                            .Wr(Wr),
                            //.Wr(stable_Wr),
                            .stall(stall),
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
    
    // Wr
    reg1bit reg1 (          .dff_out(stable_Wr), 
                            .in(Wr), 
                            .en(Wr), 
                            .clk(clk), 
                            .rst(rst));
    // Rd
    reg1bit reg2 (          .dff_out(stable_Rd), 
                            .in(Rd), 
                            .en(Rd), 
                            .clk(clk), 
                            .rst(rst));
       
endmodule // mem_system

// DUMMY LINE FOR REV CONTROL :9:
