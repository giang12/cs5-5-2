# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in0
add wave -logic in1
add wave -logic in2
add wave -logic in3
add wave -logic sel
add wave -logic out

# force the input signals
force -freeze in0 3'b000 0
force -freeze in1 3'b001 0
force -freeze in2 3'b010 0
force -freeze in3 3'b011 0
force -freeze sel 2'b00 0


force -freeze in0 3'b000 50
force -freeze in1 3'b001 50
force -freeze in2 3'b010 50
force -freeze in3 3'b011 50
force -freeze sel 2'b01 50


force -freeze in0 3'b000 100
force -freeze in1 3'b001 100
force -freeze in2 3'b010 100
force -freeze in3 3'b011 100
force -freeze sel 2'b10 100


force -freeze in0 3'b000 150
force -freeze in1 3'b001 150
force -freeze in2 3'b010 150
force -freeze in3 3'b011 150
force -freeze sel 2'b11 150







# run the full simulation
run 200

# open the wave window
view wave
