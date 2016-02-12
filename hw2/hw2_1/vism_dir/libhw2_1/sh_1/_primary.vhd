library verilog;
use verilog.vl_types.all;
entity sh_1 is
    port(
        \Out\           : out    vl_logic_vector(15 downto 0);
        \In\            : in     vl_logic_vector(15 downto 0);
        op              : in     vl_logic_vector(1 downto 0);
        en              : in     vl_logic
    );
end sh_1;
