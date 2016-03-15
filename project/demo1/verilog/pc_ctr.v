module pc_ctr(pc_src, jump, zero, alu_out, instr);
    input jump, zero, alu_out;
    input [1:0] instr;
    output [2:0] pc_src;

endmodule
