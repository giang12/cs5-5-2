module statelogic ( // outputs
                    next_state, 
                    // to mem
                    wr, 
                    rd,
                    // to cache
                    write, 
                    comp,
                    enable,
                    // inputs
                    state, 
                    // from mem_system
                    Rd, 
                    Wr,
                    busy,
                    // from cache
                    valid, 
                    dirty, 
                    hit
);

input [3:0] state;
// from mem
input Rd, Wr, busy;
// from cache
input valid, dirty, hit; 

output [3:0] next_state;
// to Memory
output wr, rd;
// to cache
output write, comp, enable; 

reg [3:0] next_state;
reg comp, write, enable, wr, rd;

//assign Out = state[2];


always @(Wr or Rd or valid or hit or dirty or busy or state)
begin
    casex({Wr,Rd,valid,hit,dirty,busy,state})
        // IDLE, Wr = 0, Rd = 0
        10'b00xxxx_0000:
            //comp <= 1'bx;
            //write <= 1'bx;
            //enable <= 1'b0;
            comp <= 1'b0; // trys to get valid, hit, dirty value for next state
            write <= 1'b0; // trys to get valid, hit, dirty value for next state
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0000;
        // IDLE to ERR, Wr = 1, Rd = 1
        10'b11xxxx_0000:
            //comp <= 1'bx;
            //write <= 1'bx;
            //enable <= 1'b0;
            comp <= 1'b0; // trys to get valid, hit, dirty value for next state
            write <= 1'b0; // trys to get valid, hit, dirty value for next state
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b1101;
        
        // ERR, Wr = 1, Rd = 1
        10'b11xxxx_1101:
            //comp <= 1'bx;
            //write <= 1'bx;
            //enable <= 1'b0;
            comp <= 1'b0; // trys to get valid, hit, dirty value for next state
            write <= 1'b0; // trys to get valid, hit, dirty value for next state
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b1101;
        // ERR to IDLE, Wr = 0, Rd = 0
        10'b00xxxx_1101:
            //comp <= 1'bx;
            //write <= 1'bx;
            //enable <= 1'b0;
            comp <= 1'b0; // trys to get valid, hit, dirty value for next state
            write <= 1'b0; // trys to get valid, hit, dirty value for next state
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0000;
        // ERR to IDLE, Wr = 1, Rd = 0
        10'b10xxxx_1101:
            //comp <= 1'bx;
            //write <= 1'bx;
            //enable <= 1'b0;
            comp <= 1'b0; // trys to get valid, hit, dirty value for next state
            write <= 1'b0; // trys to get valid, hit, dirty value for next state
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0000;
        // ERR to IDLE, Wr = 0, Rd = 1
        10'b01xxxx_1101:
            //comp <= 1'bx;
            //write <= 1'bx;
            //enable <= 1'b0;
            comp <= 1'b0; // trys to get valid, hit, dirty value for next state
            write <= 1'b0; // trys to get valid, hit, dirty value for next state
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0000;



        // IDLE to WR
        10'b10xxxx_0000:
            //comp <= 1'bx;
            //write <= 1'bx;
            //enable <= 1'b0;
            comp <= 1'b1; // trys to get valid, hit, dirty value for next state
            write <= 1'b0; // trys to get valid, hit, dirty value for next state
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0001;
        // IDLE to RD
        10'b01xxxx_0000:
            //comp <= 1'bx;
            //write <= 1'bx;
            //enable <= 1'b0;
            comp <= 1'b1; // trys to get valid, hit, dirty value for next state
            write <= 1'b0; // trys to get valid, hit, dirty value for next state
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0010;
        
        // WR to IDLE, valid = 1, hit = 1
        10'bxx110x_0001:
            comp <= 1'b1;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0000;
        

        // WR to WB_W1, valid = 0, hit = 1
        10'bxx011x_0001:
            comp <= 1'b1;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0011;
        // WR to WB_W1, valid = 0, hit = 0
        10'bxx001x_0001:
            comp <= 1'b1;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0011;
        // WR to WB_W1, valid = 1, hit = 0
        10'bxx101x_0001:
            comp <= 1'b1;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0011;

        

        // WR to RD_MEM0, valid = 0, hit = 1, dirty = 0
        10'bxx010x_0001:
            comp <= 1'b1;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0111;
        // WR to RD_MEM0, valid = 0, hit = 0, dirty = 0
        10'bxx000x_0001:
            comp <= 1'b1;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0111;
        // WR to RD_MEM0, valid = 1, hit = 0, dirty = 0
        10'bxx100x_0001:
            comp <= 1'b1;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0111;
         
        

        // RD to IDLE, valid = 1, hit = 1
        10'bxx110x_0010:
            comp <= 1'b1;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0000;
        
        // RD to WB_W1, valid = 0, hit = 1
        10'bxx011x_0010:
            comp <= 1'b1;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0011;
        // RD to WB_W1, valid = 0, hit = 0
        10'bxx001x_0010:
            comp <= 1'b1;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0011;
        // RD to WB_W1, valid = 1, hit = 0
        10'bxx101x_0010:
            comp <= 1'b1;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0011;
        

        // RD to RD_MEM0, valid = 0, hit = 1, dirty = 0
        10'bxx010x_0010:
            comp <= 1'b1;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0111;
        // RD to RD_MEM0, valid = 0, hit = 0, dirty = 0
        10'bxx000x_0010:
            comp <= 1'b1;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0111;
        // RD to RD_MEM0, valid = 1, hit = 0, dirty = 0
        10'bxx100x_0010:
            comp <= 1'b1;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0111;
         
        // casex({Wr,Rd,valid,hit,dirty,busy,state})
        // WB_W1 to WB_W2
        10'bxxxxxx_0011:
            comp <= 1'b0;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b1;
            rd <= 1'b0;
            next_state <= 4'b0100;
        // WB_W2 to WB_W3
        10'bxxxxxx_0100:
            comp <= 1'b0;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b1;
            rd <= 1'b0;
            next_state <= 4'b0101;
        // WB_W3 to WB_W4
        10'bxxxxxx_0101:
            comp <= 1'b0;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b1;
            rd <= 1'b0;
            next_state <= 4'b0110;
        // TODO: not sure if busy = 1. need to stay here 
        // since later read will accessing different banks 
        // of memory from the bank it is currently writing
        //
        // WB_W4, busy = 1
        10'bxxxxx1_0110:
            comp <= 1'b0;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b1;
            rd <= 1'b0;
            next_state <= 4'b0110;
        // wb_w4, busy = 0
        10'bxxxxx0_0110:
            comp <= 1'b0;
            write <= 1'b0;
            enable <= 1'b1;
            wr <= 1'b1;
            rd <= 1'b0;
            next_state <= 4'b0111;
        // TODO: should i disable `enable for cache??`
        // will that affect mem's behavior?? 
        // RD_MEM0
        10'bxxxxxx_0111:
            comp <= 1'b0;
            write <= 1'b0;
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b1;
            next_state <= 4'b1000;
        // TODO: should i disable `enable for cache??`
        // will that affect mem's behavior?? 
        // RD_MEM1
        10'bxxxxxx_1000:
            comp <= 1'b0;
            write <= 1'b0;
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b1;
            next_state <= 4'b1001;
        // rd_mem2 & wr_cache0
        10'bxxxxxx_1001:
            comp <= 1'b0;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b1;
            next_state <= 4'b1010;
        // rd_mem3 & wr_cache1
        10'bxxxxxx_1010:
            comp <= 1'b0;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b1;
            next_state <= 4'b1011;
        // wr_cache2
        10'bxxxxxx_1011:
            comp <= 1'b0;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b1100;
        // wr_cache3 to wr
        10'b10xxxx_1100:
            comp <= 1'b0;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0001;
        // wr_cache3 to rd
        10'b01xxxx_1100:
            comp <= 1'b0;
            write <= 1'b1;
            enable <= 1'b1;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0010;



        default:
            comp <= 1'b0;
            write <= 1'b0;
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'bxxxx;
    endcase
end

endmodule
