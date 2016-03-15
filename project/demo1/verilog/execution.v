module execution(next_pc, Out, set, instr, pc_plus_two, pc, read_data_1, read_data_2, imm_5_ext, imm8_ext, imm_11_ext, ALUSrc1, ALUSrc2, Op, Cin, invA, invB, sign, jump, branch);
 
  input [15:0] instr;
  input [15:0] pc_plus_two;
  input [15:0] pc;
  input [15:0] read_data_1, read_data_2
  input [15:0] imm_5_ext, imm_8_ext, imm_11_ext;
  input [2:0] ALUSrc1, ALUSrc2;
  input [2:0] Op;
  input Cin, invA, invB, sign;
  input jump;
  input branch;

  //NEED INPUT FOR 
  // write back data [15:0]
  
  output [15:0] next_pc;
  output [15:0] Out; 
  output [15:0] set;
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
  wire [15:0] pc_plus_two_plus_imm_8_ext;
  wire [15:0] pc_plus_two_plus_imm_11_ext;
  wire [15:0] rs_plus_imm_8_ext;
  wire [2:0] pc_src;
  wire [15:0] branch_target;
  wire ofl_disposal;
  wire cout;

  

  assign Out = alu_out;

  
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
          .in5(16'bxxxx_xxxx_xxxx_xxxx),
          .in6(16'bxxxx_xxxx_xxxx_xxxx),
          .in7(16'bxxxx_xxxx_xxxx_xxxx)
        );
  alu alu0(
          // Outputs
          .Out(alu_out),
          .Ofl(ofl),
          .Cout(cout),
          .Z(zero),
          // Inputs
          .A(alu_src_1),
          .B(alu_src_2),
          .Cin(Cin),
          .Op(Op),
          .invA(invA),
          .invB(invB),
          .sign(sign)
        );

  
  // Two other sub control units
  cond_set cond_set0(
          // Outputs
          .set(set),
          // Inputs
          .instr(instr[12:11]),
          .zero(zero),
          .cout(cout),
          .alu_out_msb(alu_out[15])
        );

  pc_ctr pc_ctr0(
          // Outputs
          .pc_src(pc_src),
          // Inputs
          .instr(instr[12:11])
          .jump(jump),
          .zero(zero),
          .alu_out_msb(alu_out[15])
        );

  // Branch Related Part

  mux2_1_16bit next_pc_mux(
          // Outputs
          .out(next_pc),
          // Inputs
          .sel(branch),
          .in0(pc_plus_two),
          .in1(branch_target)
        );

  cla_16bit adder0(
          // Outputs
          .OUT(rs_plus_imm_8_ext),
          .Ofl(ofl_disposal),
          // Inputs
          .A(read_data_1),
          .B(imm_8_ext),
          .CI(1'b0),
          .sign(1'b1)
        ); 

  cla_16bit adder1(
          // Outputs
          .OUT(pc_plus_two_plus_imm_8_ext),
          .Ofl(ofl_disposal),
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
          // Inputs
          .A(pc_plus_two),
          .B(imm_11_ext),
          .CI(1'b0),
          .sign(1'b1)
        ); 

  mux8_1_16bit branch_target_mux(
          // Outputs
          .out(branch_target),
          // Inputs
          .sel(pc_src),
          .in0(pc),
          .in1(pc_plus_two),
          .in2(rs_plus_imm_8_ext),
          .in3(pc_plus_two_plus_imm_8_ext),
          .in4(pc_plus_two_plus_imm_11_ext),
          .in5(16'bxxxx_xxxx_xxxx_xxxx),
          .in6(16'bxxxx_xxxx_xxxx_xxxx),
          .in7(16'bxxxx_xxxx_xxxx_xxxx)
        );


endmodule
