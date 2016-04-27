library verilog;
use verilog.vl_types.all;
entity or16 is
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic
    );
end or16;
