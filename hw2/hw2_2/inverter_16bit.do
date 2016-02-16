# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic In
add wave -logic Out
add wave -logic inv


# force the input signals
force -freeze In 16'b1111000011110000 0
force -freeze inv 1'b0 0

force -freeze inv 1'b1 50 
force -freeze inv 1'b0 100 
#force -freeze InD 1'b0 0
#force -freeze En 1'b1 0
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
run 200

# open the wave window
view wave
