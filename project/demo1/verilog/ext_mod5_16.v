module ext_mod5_16(out, sel, in);
    input [4:0] in;
    input sel;
    output [15:0] out;
    
    assign out = sel ? {{11{1'b1}}, {in}} : {{11{1'b0}}, {in}};

endmodule 
