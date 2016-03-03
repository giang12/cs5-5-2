module fifo_reg(data_out, data_in, write_ptr, read_ptr, data_in_valid, fifo_full, fifo_empty, rst, clk);
    // from fifo mod
    input [63:0] data_in;
    input rst, clk;

    // from statelogic
    input [1:0] write_ptr, read_ptr;
    input data_in_valid;
    input fifo_full, fifo_empty;
    
    // to fifo mod
    output [63:0] data_out;

    wire [3:0] decode_out;
    wire en0, en1, en2, en3;
    wire [63:0] reg_out0, reg_out1, reg_out2, reg_out3;
    wire data_in_valid_ctr;
    wire rst_ctr;

    decoder2_4 decoder(.out(decode_out), .in(write_ptr));
    
    and2 and_0(.out(data_in_valid_ctr), .in1(~fifo_full), .in2(data_in_valid));
    and2 and_1(.out(en0), .in1(data_in_valid_ctr), .in2(decode_out[0]));
    and2 and_2(.out(en1), .in1(data_in_valid_ctr), .in2(decode_out[1]));
    and2 and_3(.out(en2), .in1(data_in_valid_ctr), .in2(decode_out[2]));
    and2 and_4(.out(en3), .in1(data_in_valid_ctr), .in2(decode_out[3]));
    
    or2 or_0(.out(rst_ctr), .in1(rst), .in2(fifo_empty));
    
    reg_64bit reg0 (.out(reg_out0), .in(data_in), .clk(clk), .rst(rst_ctr), .en(en0));
    reg_64bit reg1 (.out(reg_out1), .in(data_in), .clk(clk), .rst(rst_ctr), .en(en1));
    reg_64bit reg2 (.out(reg_out2), .in(data_in), .clk(clk), .rst(rst_ctr), .en(en2));
    reg_64bit reg3 (.out(reg_out3), .in(data_in), .clk(clk), .rst(rst_ctr), .en(en3));

    
    mux4_1_64bit mux0 (.out(data_out), .in0(reg_out0), .in1(reg_out1), .in2(reg_out2), .in3(reg_out3), .sel(read_ptr));
endmodule
