library verilog;
use verilog.vl_types.all;
entity reg_16bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0);
        en              : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic
    );
end reg_16bit;
