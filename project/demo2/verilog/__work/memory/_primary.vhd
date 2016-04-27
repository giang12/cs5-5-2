library verilog;
use verilog.vl_types.all;
entity memory is
    port(
        readdata        : out    vl_logic_vector(15 downto 0);
        aluresult       : in     vl_logic_vector(15 downto 0);
        writedata       : in     vl_logic_vector(15 downto 0);
        memen           : in     vl_logic;
        memwr           : in     vl_logic;
        halt            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end memory;
