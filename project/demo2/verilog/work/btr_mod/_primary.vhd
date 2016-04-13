library verilog;
use verilog.vl_types.all;
entity btr_mod is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0)
    );
end btr_mod;
