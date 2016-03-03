library verilog;
use verilog.vl_types.all;
entity fifo_ctr is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        wr_en           : in     vl_logic;
        rd_en           : in     vl_logic;
        buf_empty       : out    vl_logic;
        buf_full        : out    vl_logic;
        rd_ptr          : out    vl_logic_vector(1 downto 0);
        wr_ptr          : out    vl_logic_vector(1 downto 0);
        err             : out    vl_logic
    );
end fifo_ctr;
