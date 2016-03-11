library verilog;
use verilog.vl_types.all;
entity fifo_reg is
    port(
        data_out        : out    vl_logic_vector(63 downto 0);
        data_in         : in     vl_logic_vector(63 downto 0);
        write_ptr       : in     vl_logic_vector(1 downto 0);
        read_ptr        : in     vl_logic_vector(1 downto 0);
        data_in_valid   : in     vl_logic;
        fifo_full       : in     vl_logic;
        fifo_empty      : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic
    );
end fifo_reg;
