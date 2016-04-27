module special_control(instr, dump);
    input [4:0] instr;
    output dump;
    reg dump;

always @ (instr)
begin
    casex({instr})
      5'b00000:
      begin
        dump <= 1'b1;
      end
      default:
      begin
        dump <= 1'b0;
      end
    endcase
end
endmodule 
