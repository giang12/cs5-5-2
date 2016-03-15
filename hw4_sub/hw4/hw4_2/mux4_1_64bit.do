# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in0
add wave -logic in1
add wave -logic in2
add wave -logic in3
add wave -logic out
add wave -logic sel


# force the input signals
force -freeze in0 64'h462df78c76d457e0 0
force -freeze in1 64'h462df78c76d457e1 0
force -freeze in2 64'h462df78c76d457e2 0
force -freeze in3 64'h462df78c76d457e3 0
force -freeze sel 2'b00 0


force -freeze sel 2'b01 50

force -freeze sel 2'b10 100

force -freeze sel 2'b11 150

force -freeze sel 2'b00 200

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
run 300

# open the wave window
view wave
