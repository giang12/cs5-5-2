library verilog;
use verilog.vl_types.all;
entity statelogic is
    port(
        next_state      : out    vl_logic_vector(2 downto 0);
        wp              : out    vl_logic_vector(1 downto 0);
        rp              : out    vl_logic_vector(1 downto 0);
        err             : out    vl_logic;
        fifo_empty      : out    vl_logic;
        fifo_full       : out    vl_logic;
        rst             : in     vl_logic;
        data_in_valid   : in     vl_logic;
        pop_fifo        : in     vl_logic;
        state           : in     vl_logic_vector(2 downto 0)
    );
end statelogic;
