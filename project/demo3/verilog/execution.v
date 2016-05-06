module execution(Out, set, btr_out, flush, next_pc, data_to_mem, instr, read_data_1, read_data_2, imm_5_ext, imm_8_ext, imm_11_ext, pc_plus_two, branch, jump, ALUSrc1, ALUSrc2, Op, Cin, invA, invB, sign, IDEX_Instr, EXMEM_RegWriteEN, MEMWB_RegWriteEN, EXMEM_DstRegNum, MEMWB_DstRegNum, WB_DATA, EXMEM_DATA, rst, clk);
 
  input [15:0] instr;
  input [15:0] read_data_1, read_data_2;
  input [15:0] imm_5_ext, imm_8_ext, imm_11_ext, pc_plus_two;
  input branch, jump;
  input [2:0] ALUSrc1, ALUSrc2;
  input [2:0] Op;
  input Cin, invA, invB, sign; 
  input rst, clk; 
  input [15:0] IDEX_Instr;
  input EXMEM_RegWriteEN;
  input MEMWB_RegWriteEN;
  input [2:0] EXMEM_DstRegNum;
  input [2:0] MEMWB_DstRegNum;

  input [15:0] WB_DATA, EXMEM_DATA;
  

  //NEED INPUT FOR 
  // write back data [15:0]
  
  output [15:0] Out;
  output [15:0] set;
  output [15:0] btr_out;
  wire normal_flush;
  output flush;

  assign flush = normal_flush | ((instr[15:11] == 5'b00011 || instr[15:11] == 5'b00000)? 1'b1 : 1'b0);
  output [15:0] next_pc;
  output [15:0] data_to_mem;
  //NEED OUTPUT FOR 
  // instr [15:0]
  // imm_8_ext [15:0]
  // read_data_2 [15:0]
  // write back data [15:0]


  wire [15:0] read_data_1_shifted;
  wire [15:0] alu_out;
  wire ofl;
  wire zero;
  wire [15:0] alu_src_1, alu_src_2;
  wire [2:0] pc_src;
  wire ofl_disposal;
  wire cout_disposal;
  wire cout;
  wire [15:0] sixteen_minus_read_data_2_3_0_zero_ext;
  wire [15:0] sixteen_minus_imm_5_ext_3_0_zero_ext;
  wire zero_disposal;

  

  assign Out = alu_out;

  // forward_unit
  // TODO: connect wires
  wire [1:0] forward_a;
  wire [1:0] forward_b;
  

  wire need_to_match_both;
  match_both match0 (.opcode(IDEX_Instr[15:11]), .matchBoth(need_to_match_both));
  forward_unit forward_u0 ( 
            .ForwardA(forward_a), 
            .ForwardB(forward_b),
            .ValidRt(need_to_match_both), 
            .IDEX_Instr(IDEX_Instr),   
            .EXMEM_RegWriteEN(EXMEM_RegWriteEN), 
            .MEMWB_RegWriteEN(MEMWB_RegWriteEN), 
            .EXMEM_DstRegNum(EXMEM_DstRegNum), 
            .MEMWB_DstRegNum(MEMWB_DstRegNum)
        ); 

  wire [15:0] forwarded_data_a;
  wire [15:0] forwarded_data_b;

  mux4_1_16bit alu_fwdA_mux (.out(forwarded_data_a), .in0(alu_src_1), .in1(EXMEM_DATA), .in2(WB_DATA), .in3(16'bx), .sel(forward_a));
  mux4_1_16bit alu_fwdB_mux (.out(forwarded_data_b), .in0(alu_src_2), .in1(EXMEM_DATA), .in2(WB_DATA), .in3(16'bx), .sel(forward_b));
  mux4_1_16bit mem_data_fwd_mux (.out(data_to_mem), .in0(read_data_2), .in1(EXMEM_DATA), .in2(WB_DATA), .in3(16'bx), .sel(forward_b));



  wire [15:0] actual_alu_data_a;
  wire [15:0] actual_alu_data_b;
  

  wire [15:0] forwarded_data_a_shifted;
  wire [15:0] sixteen_minus_forwarded_data_b;

  wire alu_actual_src_mux_a_sel;
  wire alu_actual_src_mux_b_sel;
  assign alu_actual_src_mux_a_sel = (forward_a == 2'b00) ? 1'b0 :
                                    (instr[15:11] == 5'b10010) ? 1'b1 : 1'b0;
  assign alu_actual_src_mux_b_sel = (forward_b == 2'b00) ? 1'b0 :
                                    (instr[15:11] == 5'b11010 && instr[1:0] == 2'b10 ) ? 1'b1 : 1'b0;
 
  mux2_1_16bit alu_actual_src_mux_a(.out(actual_alu_data_a), .in0(forwarded_data_a), .in1(forwarded_data_a_shifted), .sel(alu_actual_src_mux_a_sel));
  mux2_1_16bit alu_actual_src_mux_b(.out(actual_alu_data_b), .in0(forwarded_data_b), .in1(sixteen_minus_forwarded_data_b), .sel(alu_actual_src_mux_b_sel));
 
// shifter for shifting data after forwarded

   sf_left8bit shifter_2(
          // Outputs
          .out(forwarded_data_a_shifted),
          // Inputs
          .in(forwarded_data_a)
        );
 // ror_amount for modify the shift amt data after forwarded
 
  special_adder ror_amt_adder2(
          .in(forwarded_data_b[3:0]),
          .out(sixteen_minus_forwarded_data_b)
  );
  
  // ALU Related 
  sf_left8bit shifter_1(
          // Outputs
          .out(read_data_1_shifted),
          // Inputs
          .in(read_data_1)
        );
  
  mux8_1_16bit alu_src_mux_1(
          // Outputs
          .out(alu_src_1),
          // Inputs
          .sel(ALUSrc1),
          .in0(read_data_1),
          .in1(read_data_1_shifted),
          .in2(imm_5_ext),
          .in3(imm_8_ext),
          .in4(read_data_2),
          .in5(16'b0000_0000_0000_0000),
          .in6(16'bxxxx_xxxx_xxxx_xxxx),
          .in7(16'bxxxx_xxxx_xxxx_xxxx)
        );
  
    mux8_1_16bit alu_src_mux_2(
          // Outputs
          .out(alu_src_2),
          // Inputs
          .sel(ALUSrc2),
          .in0(read_data_2),
          .in1(imm_5_ext),
          .in2(imm_8_ext),
          .in3(read_data_1),
          .in4(16'b0000_0000_0000_0000),
          .in5(sixteen_minus_read_data_2_3_0_zero_ext),
          .in6(sixteen_minus_imm_5_ext_3_0_zero_ext),
          .in7(16'bxxxx_xxxx_xxxx_xxxx)
        );


  special_adder ror_amt_adder0(
          .in(read_data_2[3:0]),
          .out(sixteen_minus_read_data_2_3_0_zero_ext)
  );

  special_adder ror_amt_adder1(
          .in(imm_5_ext[3:0]),
          .out(sixteen_minus_imm_5_ext_3_0_zero_ext)
  );


  
  wire [15:0] alu_scr_b_last_level_value;
  wire alu_src_b_last_level_mux_sel;
  assign alu_src_b_last_level_mux_sel = (instr[15:11] == 5'b10000)? 1'b1 : (instr[15:11] == 5'b10011) ? 1'b1 : (instr[15:11] == 5'b10001) ? 1'b1 : 1'b0;
  mux2_1_16bit alu_src_b_last_level_mux(
        .out(alu_scr_b_last_level_value),
        .in0(actual_alu_data_b),
        .in1(imm_5_ext),
        .sel(alu_src_b_last_level_mux_sel)
    );

  alu alu0(
          // Outputs
          .Out(alu_out),
          .Ofl(ofl),
          .Cout(cout),
          .Z(zero),
          // Inputs
          .A(actual_alu_data_a),
          .B(alu_scr_b_last_level_value),
          .Cin(Cin),
          .Op(Op),
          .invA(invA),
          .invB(invB),
          .sign(sign)
        );

    btr_mod btr0 (
                        .out(btr_out),
                        .in(actual_alu_data_a)
                    );

  
  // Two other sub control units
  cond_set cond_set0(
          // Outputs
          .set(set),
          // Inputs
          .instr(instr[12:11]),
          .zero(zero),
          .cout(cout),
          .alu_src_1_msb(actual_alu_data_a[15]),
          .alu_src_2_msb(actual_alu_data_b[15]),
          .alu_out_msb(alu_out[15])
        );


    // branch_cond_test
    branch_cond_test bran_cond (
                        .data(actual_alu_data_a),  
                        .instr(instr[12:11]), 
                        .branch(branch), 
                        .jump(jump), 
                        .pc_src(pc_src),
                        .flush(normal_flush)
                );
 
  wire [15:0] pc_plus_two_plus_imm_8_ext;
  wire [15:0] pc_plus_two_plus_imm_11_ext;
  wire [15:0] rs_plus_imm_8_ext;
 

   fast_adder adder0(
          // Outputs
          .S(rs_plus_imm_8_ext),
          .Cout(cout_disposal),
          // Inputs
          .A(actual_alu_data_a),
          .B(imm_8_ext),
          .Cin(1'b0)
        ); 

  fast_adder adder1(
          // Outputs
          .S(pc_plus_two_plus_imm_8_ext),
          .Cout(cout_disposal),
         // Inputs
          .A(pc_plus_two),
          .B(imm_8_ext),
          .Cin(1'b0)
        ); 

  fast_adder adder2(
          // Outputs
          .S(pc_plus_two_plus_imm_11_ext),
          .Cout(cout_disposal),
         // Inputs
          .A(pc_plus_two),
          .B(imm_11_ext),
          .Cin(1'b0)
        ); 
  
  wire [15:0] epc_out;

  mux8_1_16bit branch_target_mux(
          // Outputs
          .out(next_pc),
          // Inputs
          .sel( (instr[15:11] == 5'b00000)? 3'b001 :((instr[15:11] == 5'b00011) ? 3'b110 : pc_src)),
          .in0(16'bxxxx_xxxx_xxxx_xxxx),
          .in1(pc_plus_two),
          .in2(rs_plus_imm_8_ext),
          .in3(pc_plus_two_plus_imm_8_ext),
          .in4(pc_plus_two_plus_imm_11_ext),
          .in5(16'b0000_0000_0000_0010),
          .in6(epc_out),
          .in7(16'bxxxx_xxxx_xxxx_xxxx)
        );
  reg_16bit epc(
                  .out(epc_out),
                  .in(pc_plus_two),
                  .en((pc_src == 3'b101) ? 1'b1 : 1'b0),
                  .rst(rst),
                  .clk(clk)
              );



endmodule
