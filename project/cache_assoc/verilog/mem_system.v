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
    
    
    // phrase adress
    wire[4:0] tag_in;
    wire[7:0] index;
    wire[2:0] offset;

    wire[15:0] data_in_cache;

    // state regsiter
    wire[3:0] nxt_state, curr_state;
    

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
    wire[15:0] cache_addr;

    // control logic
    wire write, comp, enable;
    wire wr, rd;

    wire cache_stall;
    wire potentialHit;
    

    // 2-way-set cache
    wire[15:0] cache_dataout, cache2_dataout, cache1_dataout;
    wire[4:0] cache_tagout, cache2_tagout, cache1_tagout;
    wire cache_hit, cache_valid;
    wire cache_dirty, cache2_dirty, cache1_dirty;
    wire cache1_hit, cache2_hit, cache1_valid, cache2_valid, cache1hit, cache2hit;
    wire[1:0] cache_en;
    wire cache1_en, cache2_en;
    wire data_sel;
    wire w1, w2;
    wire cache1_err, cache2_err;
    //wire write1, write2;
    
    //assign write1 = (cache1hit == 1'b1) ? write : 1'b0;
    //assign write2 = (cache2hit == 1'b1) ? write : 1'b0;

    assign cache_err = cache1_err | cache2_err;
    assign err = cache_err | mem_err;
    
    // assign address for WB / read from memory to cache.
    assign mem_addr =   (comp == 1) ? Addr : 
                        (comp == 0 && write == 0) ? {cache_tagout,Addr[10:3],mem_offset,Addr[0]} :
                        {Addr[15:3],mem_offset,Addr[0]};
    assign cache_addr = (comp == 1) ? Addr: {Addr[15:3],cache_offset,Addr[0]};

    assign DataOut = cache_dataout;

    
    assign tag_in = cache_addr[15:11];
    assign index = cache_addr[10:3];
    assign offset = cache_addr[2:0];
    
    assign CacheHit = cache_hit & cache_valid & potentialHit; 
    assign Done = (curr_state == 4'b1110 || curr_state == 4'b1111) ? 1: (cache_hit & cache_valid);
    //assign Done = 1'b1;
    assign Stall = cache_stall; // cache stall???
    
     
   /* data_mem = 1, inst_mem = 0 *
    * needed for cache parameter */
    parameter mem_type = 0;

    // cache1hit & cache2hit use to get valid data_sel signal
    // cache1_hit & cache2_hit are signals output directly from cache (raw
    // data)    
    
    wire[1:0] random;
    assign w2 = (nxt_state == 4'b0001 || nxt_state == 4'b0010) ? ~w1 : w1;
    
    assign random = (w1 == 1'b1) ? 2'b01 : 2'b10;
    
    assign cache1hit = cache1_hit & cache1_valid;
    assign cache2hit = cache2_hit & cache2_valid;

   
    wire wb_current_req_way_0_out;    
    dff wb_current_req_way_0 (.q(wb_current_req_way_0_out), .d(cache_en[0]), .clk(clk), .rst(rst));
    wire wb_current_req_way_1_out;    
    dff wb_current_req_way_1 (.q(wb_current_req_way_1_out), .d(cache_en[1]), .clk(clk), .rst(rst));


    wire cmp_current_req_way_0_out;    
    dff cmp_current_req_way_0 (.q(cmp_current_req_way_0_out), .d(cache2hit), .clk(clk), .rst(rst));
    wire cmp_current_req_way_1_out;    
    dff cmp_current_req_way_1 (.q(cmp_current_req_way_1_out), .d(cache1hit), .clk(clk), .rst(rst));

    wire way_0_valid_out;    
    dff  way_0_valid(.q(way_0_valid_out), .d( (curr_state == 1'b0000) ? cache1_valid : way_0_valid_out), .clk(clk), .rst(rst));
    wire way_1_valid_out;    
    dff  way_1_valid(.q(way_1_valid_out), .d( (curr_state == 1'b0000) ? cache2_valid : way_1_valid_out), .clk(clk), .rst(rst));




    //assign cache_en =   (enable == 1 && cache1_valid == 1 && cache2_valid == 0) ? 2'b01 :
    //                    (enable == 1 && cache1_valid == 0 && cache2_valid == 1) ? 2'b10 :
    //                    (enable == 1 && cache1_valid == 0 && cache2_valid == 0) ? 2'b10 :
    //                    (enable == 1 && cache1_valid == 1 && cache2_valid == 1) ? random : 2'b00; //TODO: pesudo mdoule
    
    assign cache_en =   (enable == 1 && way_0_valid_out == 1 && way_1_valid_out == 0) ? 2'b01 :
                        (enable == 1 && way_0_valid_out == 0 && way_1_valid_out == 1) ? 2'b10 :
                        (enable == 1 && way_0_valid_out == 0 && way_1_valid_out == 0) ? 2'b10 :
                        (enable == 1 && way_0_valid_out == 1 && way_1_valid_out == 1) ? random : 2'b00; //TODO: pesudo mdoule
                
    assign cache1_en = (curr_state == 4'b1110) ? wb_current_req_way_1_out : 
                                    ((curr_state == 4'b0001) ? cmp_current_req_way_1_out :  (cache_en[1] | comp));
    assign cache2_en = (curr_state == 4'b1110) ? wb_current_req_way_0_out : 
                                    ((curr_state == 4'b0001) ? cmp_current_req_way_0_out :  (cache_en[0] | comp));



    assign data_sel = (cache1hit | cache2hit) ? cache2hit : cache2_en;
    
    // 2 way set-assoctive cache outputs

    assign cache_dataout = (data_sel == 1'b1) ? cache2_dataout : cache1_dataout;
    assign cache_tagout = (data_sel == 1'b1) ? cache2_tagout : cache1_tagout;
    assign cache_hit = (data_sel == 1'b1) ? cache2_hit : cache1_hit;
    assign cache_valid = (data_sel == 1'b1) ? way_1_valid_out : way_0_valid_out;
    assign cache_dirty = (data_sel == 1'b1) ? cache2_dirty : cache1_dirty;
    
    
    dff victimway (.q(w1), .d(w2), .clk(clk), .rst(rst));
    

    cache #(0 + mem_type) c0( // Outputs
                            .tag_out              (cache1_tagout),
                            .data_out             (cache1_dataout),
                            .hit                  (cache1_hit),
                            .dirty                (cache1_dirty),
                            .valid                (cache1_valid),
                            .err                  (cache1_err),
                            // Inputs
                            .enable               (cache1_en),
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

   
   cache #(2 + mem_type) c1(// Outputs
                            .tag_out              (cache2_tagout),
                            .data_out             (cache2_dataout),
                            .hit                  (cache2_hit),
                            .dirty                (cache2_dirty),
                            .valid                (cache2_valid),
                            .err                  (cache2_err),
                            // Inputs
                            .enable               (cache2_en),
                            .clk                  (clk),
                            .rst                  (rst),
                            .createdump           (createdump),
                            .tag_in               (tag_in),
                            .index                (index),
                            .offset               (offset),
                            .data_in              (data_in_cache),
                            .comp                 (comp),
                            .write                (write),
                            .valid_in             (1'b1));


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
                            .data_in           (cache_dataout),
                            .wr                (wr),
                            .rd                (rd));

   
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
                            .Wr(Wr),
                            .stall(stall),
                            // from cache
                            .valid(cache_valid), 
                            .dirty(cache_dirty), 
                            .hit(cache_hit));
      

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
