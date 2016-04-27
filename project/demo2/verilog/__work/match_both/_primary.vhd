library verilog;
use verilog.vl_types.all;
entity match_both is
    port(
        opcode          : in     vl_logic_vector(4 downto 0);
        matchboth       : out    vl_logic
    );
end match_both;
