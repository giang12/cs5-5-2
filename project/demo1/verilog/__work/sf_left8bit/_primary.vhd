library verilog;
use verilog.vl_types.all;
entity sf_left8bit is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0)
    );
end sf_left8bit;
