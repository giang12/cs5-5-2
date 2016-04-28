module memory(done, stall, cache_hit, err, readData, aluResult, writeData, MemEn, MemWr, halt, clk, rst, data_memory_dump);
    input [15:0] aluResult, writeData;
    input MemEn, MemWr, halt, clk, rst;
    output [15:0] readData; 
    output data_memory_dump;
    

    output done;
    output stall;
    output cache_hit;
    output err;

    assign data_memory_dump = halt | err;
    
    mem_system dataMem( 
                            .DataOut(readData),
                            .Done(done),
                            .Stall(stall),
                            .CacheHit(cache_hit),
                            .DataIn(writeData),
                            .Addr(aluResult),
                            .Wr(MemEn & MemWr), // disable mem when dump
                            .Rd(MemEn & !MemWr),
                            .createdump(halt | err),
                            .clk(clk),
                            .rst(rst),
                            .err(err)
                          );

endmodule
