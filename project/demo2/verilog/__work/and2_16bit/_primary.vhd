library verilog;
use verilog.vl_types.all;
entity and2_16bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        in1             : in     vl_logic_vector(15 downto 0);
        in2             : in     vl_logic_vector(15 downto 0)
    );
end and2_16bit;
