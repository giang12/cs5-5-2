module dst_reg_parser (instr, RegDst, Dst_Reg);

  input [15:0] instr;
  input [1:0] RegDst;
  output [2:0] Dst_reg;

  assign Dst_reg =  (RegDst == 2'b01) ? instr[7:5] : 
                    (RegDst == 2'b10) ? instr[10:8] : instr[4:2];

endmodule
