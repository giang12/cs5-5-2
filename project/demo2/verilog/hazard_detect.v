module hazard_detect(pcWriteEn, IFIDWriteEn, control_sel, IDEX_Instr, IFID_Instr, IDEX_Mem_En, IDEX_Mem_Wr);

    input [15:0] IDEX_Instr, IFID_Instr;
    input IDEX_Mem_En, IDEX_Mem_Wr;
    output pcWriteEn, IFIDWriteEn, control_sel;

    reg pcWriteEn, IFIDWriteEn, control_sel;
    // your fancy code goes here
    always @ (IDEX_Mem_En or IDEX_Mem_Wr or IFID_Instr or IDEX_Instr)
    begin
        casex({IDEX_Mem_En, IDEX_Mem_Wr, IFID_Instr[15:11], IDEX_Instr[7:5], IFID_Instr[10:8], IFID_Instr[7:5]})
            // 01xxx
            16'b11_01xxx_000_000_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end 
            16'b11_01xxx_001_001_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end 
            16'b11_01xxx_010_010_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end 
            16'b11_01xxx_011_011_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end 
            16'b11_01xxx_100_100_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end 
            16'b11_01xxx_101_101_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end 
            16'b11_01xxx_110_110_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end 
            16'b11_01xxx_111_111_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            // 1100X

            16'b11_1100x_000_000_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1100x_001_001_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1100x_010_010_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1100x_011_011_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1100x_100_100_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1100x_101_101_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1100x_110_110_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1100x_111_111_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end

            // 10XXX
            16'b11_10xxx_000_000_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_10xxx_001_001_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_10xxx_010_010_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_10xxx_011_011_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_10xxx_100_100_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_10xxx_101_101_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_10xxx_110_110_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_10xxx_111_111_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            
            // 001x1
            16'b11_001x1_000_000_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_001x1_001_001_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_001x1_010_010_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_001x1_011_011_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_001x1_100_100_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_001x1_101_101_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_001x1_110_110_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_001x1_111_111_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            
            // 1101x
            16'b11_1101x_000_000_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_001_001_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_010_010_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_011_011_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_100_100_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_101_101_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_110_110_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_111_111_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
    
            16'b11_1101x_000_xxx_000:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_001_xxx_001:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_010_xxx_010:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_011_xxx_011:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_100_xxx_100:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_101_xxx_101:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_110_xxx_110:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_1101x_111_xxx_111:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end

            //111xx
            16'b11_111xx_000_000_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_001_001_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_010_010_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_011_011_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_100_100_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_101_101_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_110_110_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_111_111_xxx:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end

            
            16'b11_111xx_000_xxx_000:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_001_xxx_001:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_010_xxx_010:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_011_xxx_011:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_100_xxx_100:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_101_xxx_101:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_110_xxx_110:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end
            16'b11_111xx_111_xxx_111:
            begin
                pcWriteEn = 1'b0;
                IFIDWriteEn = 1'b0;
                control_sel = 1'b0;
            end

            default: 
            begin
                pcWriteEn = 1'b1;
                IFIDWriteEn = 1'b1;
                control_sel = 1'b1;
            end
        endcase
    end

endmodule
