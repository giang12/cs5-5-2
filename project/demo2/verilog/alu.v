module alu (A, B, Cin, Op, invA, invB, sign, Out, Ofl, Cout, Z);
   
        input [15:0] A;
        input [15:0] B;
        input Cin;
        input [2:0] Op;
        input invA;
        input invB;
        input sign;
        output [15:0] Out;
        output Ofl;
        output Cout;
        output Z;

        wire [15:0] A_out, B_out;
        wire [15:0] sh_out, and_out, or_out, xor_out, adder_out, mux4_1_out, mux2_1_out;
    
        assign Out = mux2_1_out;
         
        inverter_16bit mod1(.Out(A_out), .In(A), .inv(invA)); 
        inverter_16bit mod2(.Out(B_out), .In(B), .inv(invB));
        
        shifter mod3(.In(A_out), .Cnt(B_out[3:0]), .Op(Op[1:0]), .Out(sh_out));
        
        and2_16bit mod4(.out(and_out), .in1(A_out), .in2(B_out)); 
        or2_16bit mod5(.out(or_out), .in1(A_out), .in2(B_out)); 
        xor2_16bit mod6(.out(xor_out), .in1(A_out), .in2(B_out)); 
         
        cla_16bit mod7(.OUT(adder_out), .Ofl(Ofl), .Cout(Cout), .A(A_out), .B(B_out), .CI(Cin), .sign(sign));
        
        mux4_1_16bit mod8(.out(mux4_1_out), .sel(Op[1:0]), .in0(adder_out), .in1(or_out), .in2(xor_out), .in3(and_out));
        
        mux2_1_16bit mod9(.out(mux2_1_out), .in0(sh_out), .in1(mux4_1_out), .sel(Op[2]));
        
        // zero detection
        zero_detect mod10(.out(Z), .in(mux2_1_out));
        
endmodule
