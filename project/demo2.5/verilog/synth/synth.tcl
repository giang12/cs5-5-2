echo "********** CS552 Reading files begin ********************"
set my_verilog_files [list alu.v and16.v and2_16bit.v and2.v and3.v branch_cond_test.v btr_mod.v cache.v cla_16bit.v clu_16bit.v clu_4bit.v cond_set_old.v cond_set.v control.v decoder3_8.v decode.v dff_16bit.v dff_8bit.v dff.v dst_reg_parser.v execution.v ext_mod11_16.v ext_mod5_16.v ext_mod8_16.v fetch.v forward_unit.v four_bank_mem.v fulladder_16bit.v fulladder.v hazard_detect.v inner_module.v inverter_16bit.v lsb_module.v match_both.v memc.syn.v memory.v mem_system_ref.v mem_system.v memv.syn.v msb_module.v mux2_1_16bit.v mux2_1_32bit.v mux2_1_8bit.v mux2_1.v mux4_1_16bit.v mux4_1_4bit.v mux4_1.v mux8_1_16bit.v nand2.v nor2.v not1_16bit.v not1.v or16.v or2_16bit.v or2.v or3.v pc_ctr.v proc.v reg_16bit.v reg_64bit.v regEXMem.v regIDEX.v regIFID.v regMemWB.v rf_bypass.v rf.v sf_left8bit.v sh_1.v sh_2.v sh_4.v sh_8.v shifter.v special_adder.v special_control.v statelogic.v statereg.v writeback.v xor2_16bit.v xor2_3bit.v xor2.v zero_detect.v final_memory.syn.v  ]
set my_toplevel proc
define_design_lib WORK -path ./WORK
analyze -f verilog $my_verilog_files
elaborate $my_toplevel -architecture verilog
echo "********** CS552 Reading files end ********************"
current_design proc
#/* The name of the clock pin. If no clock-pin     */
#/* exists, pick anything                          */
set my_clock_pin clk

#/* Target frequency in MHz for optimization       */
set my_clk_freq_MHz 1000

#/* Delay of input signals (Clock-to-Q, Package etc.)  */
set my_input_delay_ns 0.1

#/* Reserved time for output signals (Holdtime etc.)   */
set my_output_delay_ns 0.1


#/**************************************************/
#/* No modifications needed below                  */
#/**************************************************/
set verilogout_show_unconnected_pins "true"


# analyze -f verilog $my_verilog_files
# elaborate $my_toplevel -architecture verilog
# current_design $my_toplevel

report_hierarchy 
link
uniquify

set my_period [expr 1000 / $my_clk_freq_MHz]

set find_clock [ find port [list $my_clock_pin] ]
if {  $find_clock != [list] } {
   set clk_name $my_clock_pin
   create_clock -period $my_period $clk_name
} else {
   set clk_name vclk
   create_clock -period $my_period -name $clk_name
} 

set_driving_cell  -lib_cell INVX1  [all_inputs]
set_input_delay $my_input_delay_ns -clock $clk_name [remove_from_collection [all_inputs] $my_clock_pin]
set_output_delay $my_output_delay_ns -clock $clk_name [all_outputs]

compile -map_effort low  -area_effort low

check_design -summary
report_constraint -all_violators

set filename [format "%s%s"  $my_toplevel ".syn.v"]
write -hierarchy -f verilog $my_toplevel -output synth/$filename
set filename [format "%s%s"  $my_toplevel ".ddc"]
write -hierarchy -format ddc -output synth/$filename

report_reference > synth/reference_report.txt
report_area > synth/area_report.txt
report_cell > synth/cell_report.txt
report_timing -max_paths 20 > synth/timing_report.txt
report_power > synth/power_report.txt

quit

