# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic Out
add wave -logic InA
add wave -logic InB
add wave -logic InC
add wave -logic InD
add wave -logic En
add wave -logic Op


# force the input signals
force -freeze InA 1'b0 0
force -freeze InB 1'b1 0
force -freeze InC 1'b0 0
force -freeze InD 1'b0 0
force -freeze En 1'b1 0
force -freeze Op 2'b01 0

force -freeze InC 1'b1 50
force -freeze Op 2'b00 50

# prevent glitch did OP operation first
force -freeze Op 2'b10 100

force -freeze InB 1'b0 100

force -freeze InB 1'b1 150

force -freeze InB 1'b0 200
force -freeze InC 1'b0 200
force -freeze Op 2'b11 200

force -freeze InA 1'b1 250

force -freeze En 1'b0 300

force -freeze InD 1'b1 350
force -freeze Op 2'b00 350







# run the full simulation
run 400

# open the wave window
view wave -r *
