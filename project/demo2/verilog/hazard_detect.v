module hazard_detect(pcWriteEn, IFIDWriteEn, control_sel, validRt, IDEX_Instr, IFID_Instr, IDEX_Mem_En, IDEX_Mem_Wr);

    input [15:0] IDEX_Instr, IFID_Instr;
    input IDEX_Mem_En, IDEX_Mem_Wr;
    input validRt;
    output pcWriteEn, IFIDWriteEn, control_sel;
    wire stall;

    // your fancy code goes here
    
    assign stall = IDEX_Mem_En && ~IDEX_Mem_Wr && ((IDEX_Instr[7:5] == IFID_Instr[10:8]) || (validRt & (IDEX_Instr[7:5] == IFID_Instr[7:5]))) ? 1'b1 : 1'b0;
    assign pcWriteEn = ~stall;
    assign IFIDWriteEn  = ~stall;
    assign control_sel = ~stall;

endmodule
