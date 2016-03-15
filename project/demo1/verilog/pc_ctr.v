module pc_ctr(pc_src, jump, zero, alu_out_msb, instr);
    input jump, zero, alu_out_msb;
    input [1:0] instr;
    output [2:0] pc_src;
    reg [2:0] pc_src;

always @ (jump, instr, zero, alu_out_msb)
begin
    casex({jump,instr,zero,alu_out_msb})
      5'b0000x:
      begin
        pc_src <= 3'b001;
      end
      5'b0001x:
      begin
        pc_src <= 3'b011;
      end
      5'b0010x:
      begin
        pc_src <= 3'b011;
      end
      5'b0011x:
      begin
        pc_src <= 3'b001;
      end
      5'b010x0:
      begin
        pc_src <= 3'b001;
      end
      5'b010x1:
      begin
        pc_src <= 3'b011;
      end
      5'b011x0:
      begin
        pc_src <= 3'b011;
      end
      5'b011x1:
      begin
        pc_src <= 3'b001;
      end
      5'b100xx:
      begin
        pc_src <= 3'b100;
      end
      5'b101xx:
      begin
        pc_src <= 3'b010;
      end
      5'b110xx:
      begin
        pc_src <= 3'b100;
      end
      5'b111xx:
      begin
        pc_src <= 3'b010;
      end
    endcase
end
endmodule
