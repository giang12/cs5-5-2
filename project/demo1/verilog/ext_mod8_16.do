# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in
add wave -logic out
add wave -logic sel

# force the input signals
force -freeze in 8'b00000000 0
force -freeze sel 1'b0 0
force -freeze sel 1'b1 50

force -freeze in 8'b10101010 100
force -freeze sel 1'b0 100
force -freeze sel 8'b1 150








# run the full simulation
run 200

# open the wave window
view wave
