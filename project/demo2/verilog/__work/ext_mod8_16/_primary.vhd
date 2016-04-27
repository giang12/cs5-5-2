library verilog;
use verilog.vl_types.all;
entity ext_mod8_16 is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        sel             : in     vl_logic;
        \in\            : in     vl_logic_vector(7 downto 0)
    );
end ext_mod8_16;
