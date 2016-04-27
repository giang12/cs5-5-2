module control (RegDst, RegDataSrc, ALUSrc1, ALUSrc2, RegWriteEn, MemEn, MemWr, SignedExt, Branch, Jump, Exception, Op, Cin, invA, invB, sign, instr1, instr2);
    input [4:0] instr1;
    input [1:0] instr2;
    output [1:0] RegDst;
    output [2:0] RegDataSrc;
    output [2:0] ALUSrc1;
    output [2:0] ALUSrc2;
    output [2:0] Op;
    
    reg [1:0] RegDst;
    reg [2:0] RegDataSrc;
    reg [2:0] ALUSrc1;
    reg [2:0] ALUSrc2;
    reg [2:0] Op;

    output  RegWriteEn,
            MemEn, 
            MemWr, 
            SignedExt,  
            Branch, 
            Jump, 
            Exception,
            Cin,
            invA,
            invB,
            sign;
    
    reg     RegWriteEn,
            MemEn, 
            MemWr, 
            SignedExt, 
            Branch, 
            Jump, 
            Exception,
            Cin,
            invA,
            invB,
            sign;

always @ (instr1 or instr2)
begin
    casex({instr1,instr2})

      //I1 Type
      7'b01000_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b01001_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b1;
        invA <= 1'b1;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b01010_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b0;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b110;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b01011_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b0;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b111;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b1;
        sign <= 1'b0;
      end
      7'b10100_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b0;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b000;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b10101_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b0;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b001;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b10110_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b110;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b0;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b000;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b10111_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b0;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b011;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b10000_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b1;
        MemWr <= 1'b1;
        SignedExt <= 1'b1;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b10001_xx:
      begin
        RegDst <= 2'b01;
        RegDataSrc <= 3'b000;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b1;
        MemWr <= 1'b0;
        SignedExt <= 1'b1;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b10011_xx:
      begin
        RegDst <= 2'b10;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b001;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b1;
        MemWr <= 1'b1;
        SignedExt <= 1'b1;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      //R Type
      //TODO BTR
      7'b11001_xx:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b101;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end
     
      7'b11011_00:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b11011_01:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b1;
        invA <= 1'b1;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b11011_10:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b110;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b11011_11:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b111;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b1;
        sign <= 1'b0;
      end
      7'b11010_00:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b000;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b11010_01:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b001;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b11010_10:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b101;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b000;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      7'b11010_11:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b011;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      //R Type with Set
      7'b11100_xx:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b100;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b1;
        invA <= 1'b0;
        invB <= 1'b1;
        sign <= 1'b1;
      end
      7'b11101_xx:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b100;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b1;
        invA <= 1'b0;
        invB <= 1'b1;
        sign <= 1'b1;
      end
      7'b11110_xx:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b100;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b1;
        invA <= 1'b0;
        invB <= 1'b1;
        sign <= 1'b1;
      end
      7'b11111_xx:
      begin
        RegDst <= 2'b00;
        RegDataSrc <= 3'b100;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b000;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        //TODO Ofl ?= Cout
        sign <= 1'b1;
      end
      
      //I2 Type
      7'b01100_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b100;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b1;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b01101_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b100;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b1;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b01110_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b100;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b1;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b01111_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'b100;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b1;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b100;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b1;
      end
      7'b11000_xx:
      begin
        RegDst <= 2'b10;
        RegDataSrc <= 3'b010;
        ALUSrc1 <= 3'bxxx;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end
      7'b10010_xx:
      begin
        RegDst <= 2'b10;
        RegDataSrc <= 3'b001;
        ALUSrc1 <= 3'b001;
        ALUSrc2 <= 3'b010;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b0;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'b101;
        Cin <= 1'b0;
        invA <= 1'b0;
        invB <= 1'b0;
        sign <= 1'b0;
      end
      //J Type 
      7'b00100_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'bxxx;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b1;
        Jump <= 1'b1;
        Exception <= 1'b0;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end
      7'b00101_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b1;
        Jump <= 1'b1;
        Exception <= 1'b0;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end
      7'b00110_xx:
      begin
        RegDst <= 2'b11;
        RegDataSrc <= 3'b011;
        ALUSrc1 <= 3'bxxx;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b1;
        Jump <= 1'b1;
        Exception <= 1'b0;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end
      7'b00111_xx:
      begin
        RegDst <= 2'b11;
        RegDataSrc <= 3'b011;
        ALUSrc1 <= 3'b000;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'b1;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'b1;
        Branch <= 1'b1;
        Jump <= 1'b1;
        Exception <= 1'b0;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end
      7'b00001_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'bxxx;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'b0;
        Jump <= 1'b0;
        Exception <= 1'b0;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end
      7'b00000_xx:
      begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'bxxx;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'b0;
        MemEn <= 1'b0;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'bx;
        Jump <= 1'bx;
        Exception <= 1'b1;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end
     
     //TODO Siic, NOP/RIT


     default:
     begin
        RegDst <= 2'bxx;
        RegDataSrc <= 3'bxxx;
        ALUSrc1 <= 3'bxxx;
        ALUSrc2 <= 3'bxxx;
        RegWriteEn <= 1'bx;
        MemEn <= 1'bx;
        MemWr <= 1'bx;
        SignedExt <= 1'bx;
        Branch <= 1'bx;
        Jump <= 1'bx;
        Exception <= 1'b1;
        Op <= 3'bxxx;
        Cin <= 1'bx;
        invA <= 1'bx;
        invB <= 1'bx;
        sign <= 1'bx;
      end 
    endcase
end

endmodule
