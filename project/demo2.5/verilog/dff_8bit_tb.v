module dff_8bit_tb();
    reg clk, rst, en;
    reg [7:0] in;
    wire [7:0] out;
    reg [7:0] rf_out;

    integer cycleCount;
    reg fail;

    dff_8bit iDUT(.out(out), .in(in), .en(en), .rst(rst), .clk(clk)); 

    initial
    clk = 1'b1;
    always
    #10 clk = ~clk;
    
    initial begin
        rst = 1;
        en = 0;
        in = 0;
        cycleCount = 0;
        fail = 0;
        rf_out = 0;
        #30 rst = 0;
    end

    
    
    always@(posedge clk) begin
        in = $random % 256;
        en = $random % 2;
        if (en) begin
            rf_out = in;
        end else begin
            rf_out = rf_out; // en = 0, output remain unchange
        end
        #5 // some delay for input to proprogate
        $display("In: %b, Expect Out: %b", in, rf_out);
        //#10
        if (!rst && out != rf_out) begin
            $display ("ERROR, expect: %b, detected: %b", rf_out, out);
            fail = 1;
        end
        
        cycleCount = cycleCount + 1;
        if (cycleCount > 50) begin
            if (fail) begin
                $display("TEST FAILEd");
            end else begin
                $display("TEST PASSED");
            end
            $finish;
        end
    end
endmodule
