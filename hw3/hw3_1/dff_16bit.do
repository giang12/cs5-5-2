# reset the simulation
restart -force -nowave

# add all input and output signals to the wave file
add wave -logic in0
add wave -logic in1
add wave -logic in2
add wave -logic in3
add wave -logic in4
add wave -logic in5
add wave -logic in6
add wave -logic in7
add wave -logic sel
add wave -logic out

dff_16bit(out, in, en, rst, clk);

# force the input signals
force -freeze in0 16'b1111111111111111 0 
force -freeze in1 16'b1111111111111110 0 
force -freeze in2 16'b1111111111111100 0 
force -freeze in3 16'b1111111111111000 0 
force -freeze in4 16'b1111111111110000 0 
force -freeze in5 16'b1111111111100000 0 
force -freeze in6 16'b1111111111000000 0 
force -freeze in7 16'b1111111110000000 0 

force -freeze sel 3'b000 0
force -freeze sel 3'b001 100
force -freeze sel 3'b010 200
force -freeze sel 3'b011 300
force -freeze sel 3'b100 400
force -freeze sel 3'b101 500
force -freeze sel 3'b110 600
force -freeze sel 3'b111 700



#force -freeze in2 16'b010101010101010 150
#force -freeze Op 2'b01 0

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
run 800

# open the wave window
view wave
