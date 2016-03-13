module control (RegWriteEn, RegWriteEn, MemReadEn, SignedEn, ALUCtr, Branch, Jump, Exception, instr1, instr2);
    input [4:0] instr1;
    input [1:0] instr2;
    output [1:0] RegDst;
    output [2:0] RegDataSrc;
    output [2:0] ALUSrc1;
    output [2:0] ALUSrc2;
    output  RegWriteEn,
            MemWriteEn, 
            MemReadEn, 
            SignedEn, 
            ALUCtr, 
            Branch, 
            Jump, 
            Exception;


endmodule
