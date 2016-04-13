library verilog;
use verilog.vl_types.all;
entity decoder3_8 is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        \in\            : in     vl_logic_vector(2 downto 0)
    );
end decoder3_8;
