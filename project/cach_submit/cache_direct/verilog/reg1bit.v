module reg1bit (dff_out, in, en, clk, rst);
    input in, en, clk, rst;
    output dff_out;
    wire mux_out;

    mux2_1 mux0 (.InA(dff_out), .InB(in), .S(en), .Out(mux_out));
    dff dff0 (.q(dff_out), .d(mux_out), .clk(clk), .rst(rst));

endmodule
