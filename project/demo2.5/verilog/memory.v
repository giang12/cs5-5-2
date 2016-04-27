module memory(readData, aluResult, writeData, MemEn, MemWr, halt, clk, rst);
    input [15:0] aluResult, writeData;
    input MemEn, MemWr, halt, clk, rst;
    output [15:0] readData; 
    
    // instruction mem
    memory2c instrctionMem( .data_out(readData),
                            .data_in(writeData),
                            .addr(aluResult),
                            .enable(MemEn), // disable mem when dump
                            .wr(MemWr),
                            .createdump(halt),
                            .clk(clk),
                            .rst(rst));
endmodule
