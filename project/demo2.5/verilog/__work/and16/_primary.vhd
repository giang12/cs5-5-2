library verilog;
use verilog.vl_types.all;
entity and16 is
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic
    );
end and16;
