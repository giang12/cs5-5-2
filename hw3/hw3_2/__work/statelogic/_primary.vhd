library verilog;
use verilog.vl_types.all;
entity statelogic is
    port(
        next_state      : out    vl_logic_vector(2 downto 0);
        \Out\           : out    vl_logic_vector(2 downto 0);
        state           : in     vl_logic_vector(2 downto 0);
        ina             : in     vl_logic;
        err             : out    vl_logic
    );
end statelogic;
