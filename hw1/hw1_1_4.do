# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic InA
add wave -logic InB
add wave -logic InC
add wave -logic InD
add wave -logic S
add wave -logic Out

# force the input signals
force -freeze InA 0 0
force -freeze InB 0 0
force -freeze InC 0 0
force -freeze InD 0 0
force -freeze S 2'b00 0


force -freeze InA 3'b0011 50
force -freeze InB 3'b0000 50
force -freeze InC 3'b1111 50
force -freeze InD 3'b1111 50

force -freeze S 2'b01 100
force -freeze InA 3'b0000 100
force -freeze InB 3'b1101 100
force -freeze InC 3'b1111 100
force -freeze InD 3'b1111 100

force -freeze S 2'b10 150
force -freeze InA 3'b0000 150
force -freeze InB 3'b0000 150
force -freeze InC 3'b1000 150
force -freeze InD 3'b1111 150

force -freeze S 2'b11 200
force -freeze InA 3'b0000 200
force -freeze InB 3'b0000 200
force -freeze InC 3'b1111 200
force -freeze InD 3'b1011 200



# run the full simulation
run 250

# open the wave window
view wave
