# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic A
add wave -logic B
add wave -logic CI
add wave -logic S
add wave -logic CO

# force the input signals
force -freeze A 4'b0000 0
force -freeze B 4'b1111 0
force -freeze CI 0 0

force -freeze A 4'b0001 50
force -freeze B 4'b1111 50
force -freeze CI 0 50

force -freeze A 4'b0001 100
force -freeze B 4'b1111 100
force -freeze CI 1 100


# run the full simulation
run 200

# open the wave window
view wave
