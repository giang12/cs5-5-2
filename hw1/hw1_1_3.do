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

force -freeze InB 1 50
force -freeze InC 1 50
force -freeze InD 1 50

force -freeze InA 1 100
force -freeze InB 0 100
force -freeze InC 0 100

force -freeze InA 0 150
force -freeze InB 1 150
force -freeze S 2'b01 150

force -freeze InA 1 200
force -freeze InB 0 200

force -freeze InA 0 250
force -freeze InC 1 250
force -freeze InD 0 250
force -freeze S 2'b10 250

force -freeze InC 0 300
force -freeze InD 1 300

force -freeze InA 1 350
force -freeze InB 1 350
force -freeze S 2'b11 350

force -freeze InD 0 400


# run the full simulation
run 500

# open the wave window
view wave
