/**
 * Authors: Xuyi Ruan & Yudong Sun
 * Description: SH_4 contains logic to shift Left/Right by 4 bit.
 * Module Contains: msb_module.v,
 *                  inner_module.v, 
 *                  lsb_module.v.
 *
 */

module sh_4 (Out, In, Op, shamt);
    input [15:0] In;
    input [1:0] Op;
    input shamt;
    output [15:0] Out;
    
    // 
    // Op for inner_moduler has only 1-bit. ex. Op[1]
    // 
   
    msb_module bit15(.Out(Out[15]), .InA(0), .InB(In[15]), .InC(In[7]), .InD(In[15]), .En(En), .Op(Op));
    msb_module bit14(.Out(Out[14]), .InA(0), .InB(In[15]), .InC(In[6]), .InD(In[14]), .En(En), .Op(Op));
    msb_module bit13(.Out(Out[13]), .InA(0), .InB(In[15]), .InC(In[5]), .InD(In[13]), .En(En), .Op(Op));
    msb_module bit12(.Out(Out[12]), .InA(0), .InB(In[15]), .InC(In[4]), .InD(In[12]), .En(En), .Op(Op));
    msb_module bit11(.Out(Out[11]), .InA(0), .InB(In[15]), .InC(In[3]), .InD(In[11]), .En(En), .Op(Op));
    msb_module bit10(.Out(Out[10]), .InA(0), .InB(In[15]), .InC(In[2]), .InD(In[10]), .En(En), .Op(Op));
    msb_module bit9(.Out(Out[9]), .InA(0), .InB(In[15]), .InC(In[1]), .InD(In[9]), .En(En), .Op(Op));
    msb_module bit8(.Out(Out[8]), .InA(0), .InB(In[15]), .InC(In[0]), .InD(In[8]), .En(En), .Op(Op));
    lsb_module bit7(.Out(Out[7]), .InA(0), .InB(In[15]), .InC(In[15]), .InD(In[7]), .En(En), .Op(Op));
    lsb_module bit6(.Out(Out[6]), .InA(0), .InB(In[14]), .InC(In[14]), .InD(In[6]), .En(En), .Op(Op));
    lsb_module bit5(.Out(Out[5]), .InA(0), .InB(In[13]), .InC(In[13]), .InD(In[5]), .En(En), .Op(Op));
    lsb_module bit4(.Out(Out[4]), .InA(0), .InB(In[12]), .InC(In[12]), .InD(In[4]), .En(En), .Op(Op));
    lsb_module bit3(.Out(Out[3]), .InA(0), .InB(In[11]), .InC(In[11]), .InD(In[3]), .En(En), .Op(Op));
    lsb_module bit2(.Out(Out[2]), .InA(0), .InB(In[10]), .InC(In[10]), .InD(In[2]), .En(En), .Op(Op));
    lsb_module bit1(.Out(Out[1]), .InA(0), .InB(In[9]), .InC(In[9]), .InD(In[1]), .En(En), .Op(Op));
    lsb_module bit0(.Out(Out[0]), .InA(0), .InB(In[8]), .InC(In[8]), .InD(In[0]), .En(En), .Op(Op));


endmodule
