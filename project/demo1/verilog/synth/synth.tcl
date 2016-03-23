echo "********** CS552 Reading files begin ********************"
set my_verilog_files [list alu.v and2_16bit.v and2.v and3.v btr_mod.v cla_16bit.v clu_16bit.v clu_4bit.v cond_set.v control.v decoder3_8.v decode.v dff_16bit.v dff.v execution.v ext_mod11_16.v ext_mod5_16.v ext_mod8_16.v fetch.v fulladder_16bit.v fulladder.v inner_module.v inverter_16bit.v lsb_module.v memory2c.syn.v msb_module.v mux2_1_16bit.v mux2_1.v mux4_1_16bit.v mux4_1_4bit.v mux4_1.v mux8_1_16bit.v nand2.v nor2.v not1_16bit.v not1.v or2_16bit.v or2.v pc_ctr.v proc.v reg_16bit.v reg_64bit.v rf.v sf_left8bit.v sh_1.v sh_2.v sh_4.v sh_8.v shifter.v special_control.v writeback.v xor2_16bit.v xor2.v zero_detect.v  ]
set my_toplevel proc
define_design_lib WORK -path ./WORK
analyze -f verilog $my_verilog_files
elaborate $my_toplevel -architecture verilog
echo "********** CS552 Reading files end ********************"
echo "********** CS552 Linking all modules begin ********************"
link
echo "********** CS552 Linking all modules end **********************"
echo "********** CS552 Checking design of all modules begin**********"
check_design -summary
echo "********** CS552 Checking design of all modules end************"
report_hierarchy > synth/hierarchy.txt
set filename [format "%s%s"  $my_toplevel ".syn.v"]
write -f verilog $my_toplevel -output synth/$filename -hierarchy
quit
