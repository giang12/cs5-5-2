module execution(Out, set, btr_out, flush, next_pc, data_to_mem, instr, read_data_1, read_data_2, imm_5_ext, imm_8_ext, imm_11_ext, pc_plus_two, branch, jump, ALUSrc1, ALUSrc2, Op, Cin, invA, invB, sign, IDEX_Instr, EXMEM_RegWriteEN, MEMWB_RegWriteEN, EXMEM_DstRegNum, MEMWB_DstRegNum, WB_DATA, EXMEM_DATA);
 
  input [15:0] instr;
  input [15:0] read_data_1, read_data_2;
  input [15:0] imm_5_ext, imm_8_ext, imm_11_ext, pc_plus_two;
  input branch, jump;
  input [2:0] ALUSrc1, ALUSrc2;
  input [2:0] Op;
  input Cin, invA, invB, sign; 
  
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
  output flush;
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
  
  assign actual_alu_data_2 = actual_alu_data_b;

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
   alu ror_amt_adder2(
           // Outputs
          .Out(sixteen_minus_forwarded_data_b),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
          .Z(zero_disposal),
          // Inputs
          .A(16'b0000_0000_0001_0000),
          .B( {   {12{1'b0}} , {forwarded_data_b[3:0]}  }),
          .Cin(1'b1),
          .Op(3'b100),
          .invA(1'b0),
          .invB(1'b1),
          .sign(1'b1)
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

  alu ror_amt_adder0(
           // Outputs
          .Out(sixteen_minus_read_data_2_3_0_zero_ext),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
          .Z(zero_disposal),
          // Inputs
          .A(16'b0000_0000_0001_0000),
          .B( {   {12{1'b0}} , {read_data_2[3:0]}  }),
          .Cin(1'b1),
          .Op(3'b100),
          .invA(1'b0),
          .invB(1'b1),
          .sign(1'b1)
         ); 

  alu ror_amt_adder1(
          // Outputs
          .Out(sixteen_minus_imm_5_ext_3_0_zero_ext),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
          .Z(zero_disposal),
          // Inputs
          .A(16'b0000_0000_0001_0000),
          .B( {   {12{1'b0}} , {imm_5_ext[3:0]}  }),
          .Cin(1'b1),
          .Op(3'b100),
          .invA(1'b0),
          .invB(1'b1),
          .sign(1'b1)
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
                        .flush(flush)
                );
 
  wire [15:0] pc_plus_two_plus_imm_8_ext;
  wire [15:0] pc_plus_two_plus_imm_11_ext;
  wire [15:0] rs_plus_imm_8_ext;
 

   cla_16bit adder0(
          // Outputs
          .OUT(rs_plus_imm_8_ext),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
          // Inputs
          .A(actual_alu_data_a),
          .B(imm_8_ext),
          .CI(1'b0),
          .sign(1'b1)
        ); 

  cla_16bit adder1(
          // Outputs
          .OUT(pc_plus_two_plus_imm_8_ext),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
         // Inputs
          .A(pc_plus_two),
          .B(imm_8_ext),
          .CI(1'b0),
          .sign(1'b1)
        ); 

  cla_16bit adder2(
          // Outputs
          .OUT(pc_plus_two_plus_imm_11_ext),
          .Ofl(ofl_disposal),
          .Cout(cout_disposal),
         // Inputs
          .A(pc_plus_two),
          .B(imm_11_ext),
          .CI(1'b0),
          .sign(1'b1)
        ); 
  

  mux8_1_16bit branch_target_mux(
          // Outputs
          .out(next_pc),
          // Inputs
          .sel(pc_src),
          .in0(16'bxxxx_xxxx_xxxx_xxxx),
          .in1(pc_plus_two),
          .in2(rs_plus_imm_8_ext),
          .in3(pc_plus_two_plus_imm_8_ext),
          .in4(pc_plus_two_plus_imm_11_ext),
          .in5(16'bxxxx_xxxx_xxxx_xxxx),
          .in6(16'bxxxx_xxxx_xxxx_xxxx),
          .in7(16'bxxxx_xxxx_xxxx_xxxx)
        );




endmodule
