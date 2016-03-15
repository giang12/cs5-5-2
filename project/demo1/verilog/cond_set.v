module cond_set(set, instr, zero, Ofl, alu_out_msb);
    input zero, ofl, alu_out_msb;
    input [1:0] instr;
    output set;
    reg set;

always @ (zero, ofl, alu_out_msb, instr)
begin
    casex({instr,zero,ofl,alu_out_mst})
      5'b000xx:
      begin
        set <= 1'b0;
      end
      5'b001xx:
      begin
        set <= 1'b1;
      end
      5'b01xx0:
      begin
        set <= 1'b0;
      end
      5'b01xx1:
      begin
        set <= 1'b1;
      end
      5'b10xx0:
      begin
        set <= 1'b1;
      end
      5'b10xx1:
      begin
        set <= 1'b0;
      end
      5'b11x0x:
      begin
        set <= 1'b0;
      end
      5'b11x1x:
      begin
        set <= 1'b1;
      end
      
      default:
      begin
        set <= 1'bx;
      end
    endcase
end   
endmodule
