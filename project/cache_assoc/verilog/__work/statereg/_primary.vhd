library verilog;
use verilog.vl_types.all;
entity statereg is
    port(
        state           : out    vl_logic_vector(3 downto 0);
        next_state      : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end statereg;
