module zero_ext8_16(out, in);
    input [7:0] in;
    output [15:0] out;
    
    assign out = {{8{1'b0}}, {in}};

endmodule 
