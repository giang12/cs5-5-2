# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic A
add wave -logic B
add wave -logic CI
add wave -logic S
add wave -logic P
add wave -logic G




# force the input signals
force -freeze A 16'b0000000000000000 0
force -freeze B 16'b0000000000000000 0
force -freeze CI 16'b0000000000000000 0

# P = 1, G = 0, S = 1
force -freeze A 16'b1111111111111111 50

# P = 1, G = 0, S = 1 
force -freeze A 16'b0000000000000000 100
force -freeze B 16'b1111111111111111 100

# P = 0, G = 1, S = 0
force -freeze A 16'b1111111111111111 150
force -freeze B 16'b1111111111111111 150

# P = 0, G = 1, S = 1
force -freeze CI 16'b1111111111111111 200

# P = 1, G = 0, S = 0
force -freeze A 16'b0000000000000000 250



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
