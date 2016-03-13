module ext_mod8_16(out, sel, in);
    input [7:0] in;
    input sel;
    output [15:0] out;
    
    assign out = sel ? {{8{1'b1}}, {in}} : {{8{1'b0}}, {in}};

endmodule 
