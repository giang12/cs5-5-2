# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
                    
add wave -logic VaildRt
add wave -logic IDEX_Instr
add wave -logic EXMEM_RegWriteEN
add wave -logic MEMWB_RegWriteEN
add wave -logic EXMEM_RegDst
add wave -logic MEMWB_RegDst

add wave -logic ForwardA
add wave -logic ForwardB

# force the input signals

# forwardA = 00
force -freeze EXMEM_RegWriteEN 1'b1 0
force -freeze EXMEM_RegDst 3'b110 0
force -freeze IDEX_Instr 16'b11111_111_11111111 0

force -freeze MEMWB_RegWriteEN 1'b1 0
force -freeze MEMWB_RegDst 3'b110 0

force -freeze VaildRt 1'b0 0

#fowardA = 01
force -freeze EXMEM_RegWriteEN 1'b1 50
force -freeze EXMEM_RegDst 3'b111 50
force -freeze IDEX_Instr 16'b11111_111_11111111 50

# forwardA = 10
force -freeze EXMEM_RegDst 3'b101 100
force -freeze IDEX_Instr 16'b11111_110_11111111 100

# forwardA = 00
force -freeze EXMEM_RegWriteEN 1'b0 150
force -freeze MEMWB_RegWriteEN 1'b0 150


# forwardB = 10

force -freeze VaildRt 1'b1 200
force -freeze MEMWB_RegWriteEN 1'b1 200
force -freeze IDEX_Instr 16'b11111_110_110_11111 100


# run the full simulation
run 250

# open the wave window
view wave
