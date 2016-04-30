module sf_left8bit(out, in);
    input [15:0] in;
    output [15:0] out;
    
    assign out = {{in[7:0]},{8{1'b0}}};
endmodule
