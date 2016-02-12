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
   
    msb_module bit15(.Out(), .InA(), .InB(), .InC(), .InD(), .En(), .Op());
    msb_module bit14(.Out(), .InA(), .InB(), .InC(), .InD(), .En(), .Op());
    msb_module bit13(.Out(), .InA(), .InB(), .InC(), .InD(), .En(), .Op());
    msb_module bit12(.Out(), .InA(), .InB(), .InC(), .InD(), .En(), .Op());
    inner_module bit11(.Out(), .InA(), .InB(), .InC(), .En(), .Op());
    inner_module bit10(.Out(), .InA(), .InB(), .InC(), .En(), .Op());
    inner_module bit9(.Out(), .InA(), .InB(), .InC(), .En(), .Op());
    inner_module bit8(.Out(), .InA(), .InB(), .InC(), .En(), .Op());
    inner_module bit7(.Out(), .InA(), .InB(), .InC(), .En(), .Op());
    inner_module bit6(.Out(), .InA(), .InB(), .InC(), .En(), .Op());
    inner_module bit5(.Out(), .InA(), .InB(), .InC(), .En(), .Op());
    inner_module bit4(.Out(), .InA(), .InB(), .InC(), .En(), .Op());
    lsb_module bit3(.Out(), .InA(), .InB(), .InC(), .InD(), .En(), .Op());
    lsb_module bit2(.Out(), .InA(), .InB(), .InC(), .InD(), .En(), .Op());
    lsb_module bit1(.Out(), .InA(), .InB(), .InC(), .InD(), .En(), .Op());
    lsb_module bit0(.Out(), .InA(), .InB(), .InC(), .InD(), .En(), .Op());

endmodule
