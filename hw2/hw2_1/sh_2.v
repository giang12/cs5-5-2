/**
 * Authors: Xuyi Ruan & Yudong Sun
 * Description: SH_2 contains logic to shift Left/Right by 2 bit.
 * Module Contains: msb_module.v,
 *                  inner_module.v, 
 *                  lsb_module.v.
 *
 */

module sh_2 (Out, In, Op, En);
    input [15:0] In;
    input [1:0] Op;
    input En;
    output [15:0] Out;
    
    // 
    // Op for inner_moduler has only 1-bit. ex. Op[1]
    // 
   
    msb_module bit15(.Out(Out[15]), .InA(0), .InB(In[15]), .InC(In[13]), .InD(In[15]), .En(En), .Op(Op));
    msb_module bit14(.Out(Out[14]), .InA(0), .InB(In[15]), .InC(In[12]), .InD(In[14]), .En(En), .Op(Op));
    inner_module bit13(.Out(Out[13]), .InA(In[14]), .InB(In[12]), .InC(In[13]), .En(En), .Op(Op[1]));
    inner_module bit12(.Out(Out[12]), .InA(In[13]), .InB(In[11]), .InC(In[12]), .En(En), .Op(Op[1]));
    inner_module bit11(.Out(Out[11]), .InA(In[12]), .InB(In[10]), .InC(In[11]), .En(En), .Op(Op[1]));
    inner_module bit10(.Out(Out[10]), .InA(In[11]), .InB(In[9]), .InC(In[10]), .En(En), .Op(Op[1]));
    inner_module bit9(.Out(Out[9]), .InA(In[10]), .InB(In[8]), .InC(In[9]), .En(En), .Op(Op[1]));
    inner_module bit8(.Out(Out[8]), .InA(In[9]), .InB(In[7]), .InC(In[8]), .En(En), .Op(Op[1]));
    inner_module bit7(.Out(Out[7]), .InA(In[8]), .InB(In[6]), .InC(In[7]), .En(En), .Op(Op[1]));
    inner_module bit6(.Out(Out[6]), .InA(In[7]), .InB(In[5]), .InC(In[6]), .En(En), .Op(Op[1]));
    inner_module bit5(.Out(Out[5]), .InA(In[6]), .InB(In[4]), .InC(In[5]), .En(En), .Op(Op[1]));
    inner_module bit4(.Out(Out[4]), .InA(In[5]), .InB(In[3]), .InC(In[4]), .En(En), .Op(Op[1]));
    inner_module bit3(.Out(Out[3]), .InA(In[4]), .InB(In[2]), .InC(In[3]), .En(En), .Op(Op[1]));
    inner_module bit2(.Out(Out[2]), .InA(In[3]), .InB(In[1]), .InC(In[2]), .En(En), .Op(Op[1])); 
    lsb_module bit1(.Out(Out[1]), .InA(0), .InB(In[15]), .InC(In[3]), .InD(In[1]), .En(En), .Op(Op));
    lsb_module bit0(.Out(Out[0]), .InA(0), .InB(In[14]), .InC(In[2]), .InD(In[0]), .En(En), .Op(Op));

endmodule
