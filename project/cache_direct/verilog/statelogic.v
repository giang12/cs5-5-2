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
        // IDLE to WR
        10'b10xxxx_0000:
            comp <= 1'bx;
            write <= 1'bx;
            enable <= 1'b0;
            wr <= 1'b0;
            rd <= 1'b0;
            next_state <= 4'b0001;
        // IDLE to RD
        10'b01xxxx_0000:
            comp <= 1'bx;
            write <= 1'bx;
            enable <= 1'b0;
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
        
        // TODO: current state: WB_WORD1



        default:
            next_state <= {4{1'bx}};
    endcase
end

endmodule
