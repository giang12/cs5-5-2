module forward_unit(ALUSel1, 
                    ALUSel2, 
                    IDEX_Instr, 
                    EXMEM_Instr, 
                    MEMWB_Instr, 
                    EXMEM_RegWriteEN, 
                    MEMWB_RegWriteEN, 
                    IDEX_ALUSrc1, 
                    IDEX_ALUSrc2, 
                    EXMEM_RegDst, 
                    MEMWB_RegDst); 
    
    input [15:0] IDEX_Instr, EXMEM_Instr, MEMWB_Instr;
    input EXMEM_RegWriteEN, MEMWB_RegWriteEN;
    input IDEX_ALUSrc1, IDEX_ALUSrc2, EXMEM_RegDst, MEMWB_RegDst;
    output ALUSel1, ALUSel2;
    
    // your fancy code goes here
    

    
endmodule

