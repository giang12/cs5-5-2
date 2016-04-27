module forward_unit(ForwardA, 
                    ForwardB, 
                    ValidRt, 
                    IDEX_Instr, 
                    EXMEM_RegWriteEN, 
                    MEMWB_RegWriteEN, 
                    EXMEM_DstRegNum, 
                    MEMWB_DstRegNum); 
    
    input [15:0] IDEX_Instr;
    input EXMEM_RegWriteEN, MEMWB_RegWriteEN;
    input [2:0] EXMEM_DstRegNum, MEMWB_DstRegNum;
    input ValidRt;
    output [1:0] ForwardA, ForwardB;
    
    // your fancy code goes here
    
    assign ForwardA = (EXMEM_RegWriteEN && (EXMEM_DstRegNum == IDEX_Instr[10:8])) ? 2'b01 : 
                      (MEMWB_RegWriteEN && (MEMWB_DstRegNum == IDEX_Instr[10:8])) ? 2'b10 : 2'b00;

    assign ForwardB = (EXMEM_RegWriteEN && ValidRt && (EXMEM_DstRegNum == IDEX_Instr[7:5])) ? 2'b01 : 
                      (MEMWB_RegWriteEN && ValidRt && (MEMWB_DstRegNum == IDEX_Instr[7:5])) ? 2'b10 : 2'b00;

endmodule

