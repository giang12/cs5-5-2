library verilog;
use verilog.vl_types.all;
entity zero_detect is
    port(
        \out\           : out    vl_logic;
        \in\            : in     vl_logic_vector(15 downto 0)
    );
end zero_detect;
