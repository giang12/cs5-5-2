library verilog;
use verilog.vl_types.all;
entity mux2_1_8bit is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        in0             : in     vl_logic_vector(7 downto 0);
        in1             : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic
    );
end mux2_1_8bit;
