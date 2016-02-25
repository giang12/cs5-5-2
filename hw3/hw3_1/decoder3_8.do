# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in
add wave -logic out


# force the input signals
force -freeze in 3'b000 0
force -freeze in 3'b001 50
force -freeze in 3'b010 100
force -freeze in 3'b011 150
force -freeze in 3'b100 200
force -freeze in 3'b101 250
force -freeze in 3'b110 300
force -freeze in 3'b111 350



#force -freeze in2 16'b010101010101010 150
#force -freeze Op 2'b01 0

#force -freeze InC 1'b1 50
#force -freeze Op 2'b00 50

# prevent glitch did OP operation first
#force -freeze Op 2'b10 100
#force -freeze InB 1'b0 100

#force -freeze InB 1'b1 150

#force -freeze InB 1'b0 200
#force -freeze InC 1'b0 200
#force -freeze Op 2'b11 200

#force -freeze InA 1'b1 250

#force -freeze En 1'b0 300

#force -freeze InD 1'b1 350
#force -freeze Op 2'b00 350







# run the full simulation
run 400

# open the wave window
view wave
