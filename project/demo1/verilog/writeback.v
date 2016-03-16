module writeback(write_data, RegDataSrc, mem_data_out, alu_out, imm_8_ext, btr_out, pc_plus_two, cond_set);

  input [2:0] RegDataSrc;
  input [15:0] mem_data_out;
  input [15:0] alu_out;
  input [15:0] imm_8_ext;
  input [15:0] btr_out;
  input [15:0] pc_plus_two;
  input [15:0] cond_set;
  output [15:0] write_data;
  

  mux8_1_16bit write_back_mux0(
          // Outputs
          .out(write_data),
          // Inputs
          .sel(RegDataSrc),
          .in0(mem_data_out),
          .in1(alu_out),
          .in2(imm_8_ext),
          .in3(pc_plus_two),
          .in4(cond_set),
          .in5(btr_out),
          .in6(16'bxxxx_xxxx_xxxx_xxxx),
          .in7(16'bxxxx_xxxx_xxxx_xxxx)
        );



endmodule

