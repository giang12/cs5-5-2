module statelogic (write_ptr, read_ptr, next_state, fifo_empty, fifo_full, err, state, data_in_valid, pop_fifo);
    // from fifo mod
    input data_in_valid, pop_fifo;
    
    // to fifo mod
    output fifo_empty, fifo_full, err;

    // to fifo reg
    output [1:0] write_ptr, read_ptr;
    output fifo_full, fifo_empty;
    
    /****** State FSM control IOs ******/    
    input [2:0] state;
    output [2:0] next_state;

    reg [2:0] next_state;
    reg err;
    reg [1:0] write_ptr, read_ptr;

    always @(data_in_valid or pop_fifo or state)
begin
  casex({data_in_valid,pop_fifo,state})
    5'b1_0_000:
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
