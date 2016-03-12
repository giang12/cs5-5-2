# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in
add wave -logic out


# force the input signals
force -freeze in 16'b0000000011111111 0

force -freeze in 16'b0000000011111111 50
force -freeze in 16'b0000000010101010 100
force -freeze in 16'b1111111101010101 150








# run the full simulation
run 200

# open the wave window
view wave
