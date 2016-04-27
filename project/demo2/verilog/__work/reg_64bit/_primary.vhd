library verilog;
use verilog.vl_types.all;
entity reg_64bit is
    port(
        \out\           : out    vl_logic_vector(63 downto 0);
        \in\            : in     vl_logic_vector(63 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic
    );
end reg_64bit;
