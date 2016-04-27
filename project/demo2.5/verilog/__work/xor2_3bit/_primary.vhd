library verilog;
use verilog.vl_types.all;
entity xor2_3bit is
    port(
        \out\           : out    vl_logic_vector(2 downto 0);
        in1             : in     vl_logic_vector(2 downto 0);
        in2             : in     vl_logic_vector(2 downto 0)
    );
end xor2_3bit;
