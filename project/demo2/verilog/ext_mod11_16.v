module ext_mod11_16(out, sel, in);
    input [10:0] in;
    input sel;
    output [15:0] out;
    
    assign out = sel ? {{5{in[10]}}, {in}} : {{5{1'b0}}, {in}};

endmodule 
