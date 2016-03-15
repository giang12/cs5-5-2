module cond_set(set, instr, zero, cout, alu_out_msb);
    input zero, cout, alu_out_msb;
    input [1:0] instr;
    output [15:0] set;
    reg [15:0] set;

always @ (zero, cout, alu_out_msb, instr)
begin
    casex({instr,zero,cout,alu_out_mst})
      5'b000xx:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      5'b001xx:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      5'b01xx0:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      5'b01xx1:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      5'b10xx0:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      5'b10xx1:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      5'b11x0x:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      5'b11x1x:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      
      default:
      begin
        set <= 16'bxxxx_xxxx_xxxx_xxxx;
      end
    endcase
end   
endmodule
