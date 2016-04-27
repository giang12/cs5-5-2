module shifter (In, Cnt, Op, Out);
   
   input [15:0] In;
   input [3:0]  Cnt;
   input [1:0]  Op;
   output [15:0] Out;

   wire [15:0] w1;
   wire [15:0] w2;
   wire [15:0] w3;
   
   sh_1 sh1(.Out(w1), .In(In), .Op(Op), .En(Cnt[0]));
   sh_2 sh2(.Out(w2), .In(w1), .Op(Op), .En(Cnt[1]));
   sh_4 sh4(.Out(w3), .In(w2), .Op(Op), .En(Cnt[2]));
   sh_8 sh8(.Out(Out), .In(w3), .Op(Op), .En(Cnt[3]));

endmodule

