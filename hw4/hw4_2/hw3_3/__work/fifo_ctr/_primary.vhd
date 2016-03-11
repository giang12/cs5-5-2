library verilog;
use verilog.vl_types.all;
entity fifo_ctr is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data_in_valid   : in     vl_logic;
        pop_fifo        : in     vl_logic;
        fifo_empty      : out    vl_logic;
        fifo_full       : out    vl_logic;
        rp              : out    vl_logic_vector(1 downto 0);
        wp              : out    vl_logic_vector(1 downto 0);
        err             : out    vl_logic
    );
end fifo_ctr;
