module statelogic (next_state, Out, state, InA, err);

input InA;
input [2:0] state;
output [2:0] next_state;
output Out[2:0];
output err;
reg [2:0] next_state;
reg err;
assign Out = state;

always @(InA or state)
begin
  casex({InA,state})
    4'b0_000:
    begin
      next_state <= 3'b001;
      err <= 1'b0;
    end
    4'b1_000:
    begin
      next_state <= 3'b000;
      err <= 1'b0;
    end    
    4'b0_001:
    begin
      next_state <= 3'b010;
      err <= 1'b0;
    end
    4'b1_001:
    begin
      next_state <= 3'b000;
      err <= 1'b0;
    end
    4'b0_010:
    begin
      next_state <= 3'b011;
      err <= 1'b0;
    end
    4'b1_010:
    begin
      next_state <= 3'b000;
      err <= 1'b0;
    end
    4'b0_011:
    begin
      next_state <= 3'b100;
      err <= 1'b0;
    end
    4'b1_011:
    begin
      next_state <= 3'b000;
      err <= 1'b0;
    end
    4'b0_100:
    begin
      next_state <= 3'b101;
      err <= 1'b0;
    end
    4'b1_100:
    begin
      next_state <= 3'b000;
      err <= 1'b0;
    end
    4'b0_101:
    begin
      next_state <= 3'b101;
      err <= 1'b0;
    end
    4'b1_101:
    begin
      next_state <= 3'b000;
      err <= 1'b0;
    end
    default:
    begin 
      next_state <= {3{1'bx}};
      err <= 1'b1;
    end
  endcase
end

endmodule
