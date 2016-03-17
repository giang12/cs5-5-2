module cond_set(set, instr, zero, cout, alu_src_1_msb, alu_src_2_msb, alu_out_msb);
    input zero, cout, alu_src_1_msb, alu_src_2_msb, alu_out_msb;
    input [1:0] instr;
    output [15:0] set;
    reg [15:0] set;

always @ (zero, cout, alu_src_1_msb, alu_src_2_msb, alu_out_msb, instr)
begin
    casex({instr,zero,cout,alu_src_1_msb,alu_src_2_msb,alu_out_msb})
      7'b000xxxx:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      7'b001xxxx:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b01xx000:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      7'b01xx001:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b01xx01x:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      7'b01xx10x:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b01xx110:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      7'b01xx111:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b100x000:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      7'b101x000:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b100x001:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b101x001:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b100x01x:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      7'b101x01x:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b100x10x:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b101x10x:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b100x110:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      7'b101x110:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b100x111:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b101x111:
      begin
        set <= 16'b0000_0000_0000_0001;
      end
      7'b11x0xxx:
      begin
        set <= 16'b0000_0000_0000_0000;
      end
      7'b11x1xxx:
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
