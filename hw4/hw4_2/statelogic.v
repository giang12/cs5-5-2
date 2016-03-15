module statelogic (next_state, wp, rp ,err, fifo_empty, fifo_full, rst, data_in_valid, pop_fifo, state);

input rst;
input data_in_valid;
input pop_fifo;
input [2:0] state;

output [2:0] next_state;
output [1:0] wp;
output [1:0] rp;
output fifo_empty;
output fifo_full;
output err;

reg [2:0] next_state;
reg [1:0] wp;
reg [1:0] rp;
reg fifo_empty;
reg fifo_full;
reg err;


always @(rst or data_in_valid or pop_fifo or state)
begin
  casex({rst,data_in_valid,pop_fifo,state})
   6'b0_0_0_000:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= wp;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end    
   6'b0_0_1_000:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= wp;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   6'b0_1_0_000:
   begin
      next_state <= 3'b001;
      err <= 1'b0;
      wp <= wp + 1;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end 
   6'b0_1_1_000:
   begin
      next_state <= 3'b001;
      err <= 1'b0;
      wp <= wp + 1;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
   6'b1_0_0_000:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end    
   6'b1_0_1_000:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   6'b1_1_0_000:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end 
   6'b1_1_1_000:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   
   6'b0_0_0_001:
   begin
      next_state <= 3'b001;
      err <= 1'b0;
      wp <= wp;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end    
   6'b0_0_1_001:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= wp;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   6'b0_1_0_001:
   begin
      next_state <= 3'b010;
      err <= 1'b0;
      wp <= wp + 1;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end 
   6'b0_1_1_001:
   begin
      next_state <= 3'b001;
      err <= 1'b0;
      wp <= wp + 1;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
   
   6'b1_0_0_001:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end    
   6'b1_0_1_001:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   6'b1_1_0_001:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end 
   6'b1_1_1_001:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   
   6'b0_0_0_010:
   begin
      next_state <= 3'b010;
      err <= 1'b0;
      wp <= wp;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end    
   6'b0_0_1_010:
   begin
      next_state <= 3'b001;
      err <= 1'b0;
      wp <= wp;
      rp <= rp + 1;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
   6'b0_1_0_010:
   begin
      next_state <= 3'b011;
      err <= 1'b0;
      wp <= wp + 1;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end 
   6'b0_1_1_010:
   begin
      next_state <= 3'b010;
      err <= 1'b0;
      wp <= wp + 1;
      rp <= rp + 1;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
   6'b1_0_0_010:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end    
   6'b1_0_1_010:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   6'b1_1_0_010:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end 
   6'b1_1_1_010:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   6'b0_0_0_011:
   begin
      next_state <= 3'b011;
      err <= 1'b0;
      wp <= wp;
      rp <= rp;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end    
   6'b0_0_1_011:
   begin
      next_state <= 3'b010;
      err <= 1'b0;
      wp <= wp;
      rp <= rp + 1;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
   6'b0_1_0_011:
   begin
      next_state <= 3'b100;
      err <= 1'b0;
      wp <= wp + 1;
      rp <= rp;
      fifo_full <= 1'b1;
      fifo_empty <= 1'b0;
   end 
   6'b0_1_1_011:
   begin
      next_state <= 3'b011;
      err <= 1'b0;
      wp <= wp + 1;
      rp <= rp + 1;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
   6'b1_0_0_011:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end    
   6'b1_0_1_011:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   6'b1_1_0_011:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end 
   6'b1_1_1_011:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   
   6'b0_0_0_100:
   begin
      next_state <= 3'b100;
      err <= 1'b0;
      wp <= wp;
      rp <= rp;
      fifo_full <= 1'b1;
      fifo_empty <= 1'b0;
   end    
   6'b0_0_1_100:
   begin
      next_state <= 3'b011;
      err <= 1'b0;
      wp <= wp;
      rp <= rp + 1;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
   6'b0_1_0_100:
   begin
      next_state <= 3'b100;
      err <= 1'b0;
      wp <= wp;
      rp <= rp;
      fifo_full <= 1'b1;
      fifo_empty <= 1'b0;
   end 
   6'b0_1_1_100:
   begin
      next_state <= 3'b011;
      err <= 1'b0;
      wp <= wp;
      rp <= rp + 1;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
   6'b1_0_0_100:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end    
   6'b1_0_1_100:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   6'b1_1_0_100:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end 
   6'b1_1_1_100:
   begin
      next_state <= 3'b000;
      err <= 1'b0;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b1;
   end
   default:
   begin 
      next_state <= {3{1'bx}};
      err <= 1'b1;
      wp <= 1'b0;
      rp <= 1'b0;
      fifo_full <= 1'b0;
      fifo_empty <= 1'b0;
   end
  endcase
end

endmodule
