library verilog;
use verilog.vl_types.all;
entity dff_8bit is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0);
        en              : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic
    );
end dff_8bit;
