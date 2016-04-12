# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file


add wave -logic IDEX_Mem_En
add wave -logic IDEX_Mem_Wr
add wave -logic IDEX_Instr
add wave -logic IFID_Instr
add wave -logic validRt
    
add wave -logic pcWriteEn
add wave -logic IFIDWriteEn
add wave -logic control_sel

# force the input signals

# stall = 0
force -freeze IDEX_Mem_En 1'b0 0
force -freeze IDEX_Mem_Wr 1'b0 0
force -freeze IDEX_Instr 16'b11111_111_111_11111 0
force -freeze IFID_Instr 16'b11111_111_111_11111 0

force -freeze validRt 1'b0 0


# stall = 1
force -freeze IDEX_Mem_En 1'b1 50

# stall = 0 
force -freeze IDEX_Mem_Wr 1'b1 100
force -freeze validRt 1'b1 100

# stall = 1

force -freeze IDEX_Mem_Wr 1'b0 150
force -freeze IDEX_Instr 16'b11111_111_111_11111 150
force -freeze IFID_Instr 16'b11111_100_111_11111 150




# run the full simulation
run 250

# open the wave window
view wave
