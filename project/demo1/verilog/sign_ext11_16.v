module sign_ext11_16(out, in);
    input [10:0] in;
    output [15:0] out;
    
    assign out = {{5{in[10]}}, {in}};

endmodule 
