library verilog;
use verilog.vl_types.all;
entity zero_ext8_16 is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0)
    );
end zero_ext8_16;
