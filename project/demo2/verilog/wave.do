onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/Cin
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/invA
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/invB
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/sign
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/EXMEM_RegWriteEN
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/MEMWB_RegWriteEN
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/ofl
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/instr
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/zero
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/ofl_disposal
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/cout_disposal
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/cout
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/zero_disposal
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/need_to_match_both
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/alu_actual_src_mux_a_sel
add wave -noupdate -format Logic /proc_hier_pbench/DUT/p0/exec/alu_actual_src_mux_b_sel
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/sixteen_minus_forwarded_data_b
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/forwarded_data_a_shifted
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/actual_alu_data_b
add wave -noupdate -format Literal -radix decimal /proc_hier_pbench/DUT/p0/exec/actual_alu_data_a
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/forwarded_data_b
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/forwarded_data_a
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/forward_b
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/forward_a
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/sixteen_minus_imm_5_ext_3_0_zero_ext
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/sixteen_minus_read_data_2_3_0_zero_ext
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/pc_src
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/alu_src_2
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/alu_src_1
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/alu_out
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/read_data_1_shifted
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/set
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/Out
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/EXMEM_ALUOUT
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/WB_DATA
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/MEMWB_DstRegNum
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/EXMEM_DstRegNum
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/IDEX_Instr
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/Op
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/ALUSrc2
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/ALUSrc1
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/imm_8_ext
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/imm_5_ext
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/read_data_2
add wave -noupdate -format Literal /proc_hier_pbench/DUT/p0/exec/read_data_1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {655 ns} 0}
WaveRestoreZoom {0 ns} {1723 ns}
configure wave -namecolwidth 554
configure wave -valuecolwidth 148
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
