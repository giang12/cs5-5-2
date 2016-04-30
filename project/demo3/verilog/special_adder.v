module special_adder(in, out);
    input [3:0] in;
    output [15:0] out;
    reg [15:0] out;
always @ (in)
begin
    case({in})
      4'b0000:
      begin
        out <= 16'b0000_0000_0000_0000;
      end
      4'b0001:
      begin
        out <= 16'b0000_0000_0000_1111;
      end
      4'b0010:
      begin
        out <= 16'b0000_0000_0000_1110;
      end
      4'b0011:
      begin
        out <= 16'b0000_0000_0000_1101;
      end     
      4'b0100:
      begin
        out <= 16'b0000_0000_0000_1100;
      end
      4'b0101:
      begin
        out <= 16'b0000_0000_0000_1011;
      end
      4'b0110:
      begin
        out <= 16'b0000_0000_0000_1010;
      end
      4'b0111:
      begin
        out <= 16'b0000_0000_0000_1001;
      end
      4'b1000:
      begin
        out <= 16'b0000_0000_0000_1000;
      end
      4'b1001:
      begin
        out <= 16'b0000_0000_0000_0111;
      end      
      4'b1010:
      begin
        out <= 16'b0000_0000_0000_0110;
      end
      4'b1011:
      begin
        out <= 16'b0000_0000_0000_0101;
      end
      4'b1100:
      begin
        out <= 16'b0000_0000_0000_0100;
      end
      4'b1101:
      begin
        out <= 16'b0000_0000_0000_0011;
      end      
      4'b1110:
      begin
        out <= 16'b0000_0000_0000_0010;
      end
      4'b1111:
      begin
        out <= 16'b0000_0000_0000_0001;
      end      
    endcase
end
endmodule
