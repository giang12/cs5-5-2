/*
 *  Author: Xuyi Ruan & Yudong Sun
 *  Descrition: 16bit single input inverter.
 *  Modules: 
 *      not1_15bit.v
 *      mux2_1.v
 */

module inverter_16bit(Out, In, inv);
    input [15:0] In;
    input inv;
    output [15:0] Out;
    wire [15:0] In_n;

    not1_16bit not1(.out(In_n), .in(In));
    mux2_1 mux0(.InA(In[0]), .InB(In_n[0]), .S(inv), .Out(Out[0]));
    mux2_1 mux1(.InA(In[1]), .InB(In_n[1]), .S(inv), .Out(Out[1]));
    mux2_1 mux2(.InA(In[2]), .InB(In_n[2]), .S(inv), .Out(Out[2]));
    mux2_1 mux3(.InA(In[3]), .InB(In_n[3]), .S(inv), .Out(Out[3]));
    mux2_1 mux4(.InA(In[4]), .InB(In_n[4]), .S(inv), .Out(Out[4]));
    mux2_1 mux5(.InA(In[5]), .InB(In_n[5]), .S(inv), .Out(Out[5]));
    mux2_1 mux6(.InA(In[6]), .InB(In_n[6]), .S(inv), .Out(Out[6]));
    mux2_1 mux7(.InA(In[7]), .InB(In_n[7]), .S(inv), .Out(Out[7]));
    mux2_1 mux8(.InA(In[8]), .InB(In_n[8]), .S(inv), .Out(Out[8]));
    mux2_1 mux9(.InA(In[9]), .InB(In_n[9]), .S(inv), .Out(Out[9]));
    mux2_1 mux10(.InA(In[10]), .InB(In_n[10]), .S(inv), .Out(Out[10]));
    mux2_1 mux11(.InA(In[11]), .InB(In_n[11]), .S(inv), .Out(Out[11]));
    mux2_1 mux12(.InA(In[12]), .InB(In_n[12]), .S(inv), .Out(Out[12]));
    mux2_1 mux13(.InA(In[13]), .InB(In_n[13]), .S(inv), .Out(Out[13]));
    mux2_1 mux14(.InA(In[14]), .InB(In_n[14]), .S(inv), .Out(Out[14]));
    mux2_1 mux15(.InA(In[15]), .InB(In_n[15]), .S(inv), .Out(Out[15]));

endmodule 
