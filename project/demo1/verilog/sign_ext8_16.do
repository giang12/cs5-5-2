# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in
add wave -logic out


# force the input signals
force -freeze in 8'b00000000 0

force -freeze in 8'b11111111 50
force -freeze in 8'b10101010 100
force -freeze in 8'b01010101 150








# run the full simulation
run 200

# open the wave window
view wave
