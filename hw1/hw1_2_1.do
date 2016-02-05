# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic InA
add wave -logic InB
add wave -logic Cin
add wave -logic S
add wave -logic Cout

# force the input signals
force -freeze InA 0 0
force -freeze InB 0 0
force -freeze Cin 0 0

force -freeze InA 0 50
force -freeze InB 0 50
force -freeze Cin 1 50

force -freeze InA 0 100
force -freeze InB 1 100
force -freeze Cin 0 100

force -freeze InA 0 150
force -freeze InB 1 150
force -freeze Cin 1 150

force -freeze InA 1 200
force -freeze InB 0 200
force -freeze Cin 0 200

force -freeze InA 1 250
force -freeze InB 0 250
force -freeze Cin 1 250

force -freeze InA 1 300
force -freeze InB 1 300
force -freeze Cin 0 300

force -freeze InA 1 350
force -freeze InB 1 350
force -freeze Cin 1 350


# run the full simulation
run 400

# open the wave window
view wave
