# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in
add wave -logic out


# force the input signals
force -freeze in 16'b0000000011111111 0
force -freeze in 16'b0000000011111111 50
force -freeze in 16'b1111111111111111 100
force -freeze in 16'b1111111111111101 150
force -freeze in 16'b0000000000000000 200


# run the full simulation
run 250

# open the wave window
view wave
