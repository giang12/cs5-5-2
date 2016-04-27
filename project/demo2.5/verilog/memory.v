module memory(readData, aluResult, writeData, MemEn, MemWr, halt, clk, rst, data_memory_dump);
    input [15:0] aluResult, writeData;
    input MemEn, MemWr, halt, clk, rst;
    output [15:0] readData; 
    output data_memory_dump;
    wire err;
    assign data_memory_dump = halt | err;
    
    memory2c_align dataMem( .data_out(readData),
                            .data_in(writeData),
                            .addr(aluResult),
                            .enable(MemEn), // disable mem when dump
                            .wr(MemWr),
                            .createdump(halt | err),
                            .clk(clk),
                            .rst(rst),
                            .err(err)
                          );

endmodule
