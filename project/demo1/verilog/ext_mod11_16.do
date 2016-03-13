# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in
add wave -logic out
add wave -logic sel


# force the input signals
force -freeze in 11'b00000000000 0
force -freeze sel 1'b1 0
force -freeze sel 1'b0 50

force -freeze in 11'b11111111111 100
force -freeze sel 1'b1 100
force -freeze sel 1'b0 150

force -freeze in 11'b01010101010 200
force -freeze sel 1'b1 200
force -freeze sel 1'b0 250









# run the full simulation
run 300

# open the wave window
view wave
