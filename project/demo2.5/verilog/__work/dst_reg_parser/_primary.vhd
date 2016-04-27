library verilog;
use verilog.vl_types.all;
entity dst_reg_parser is
    port(
        instr           : in     vl_logic_vector(15 downto 0);
        regdst          : in     vl_logic_vector(1 downto 0);
        dst_reg         : out    vl_logic_vector(2 downto 0)
    );
end dst_reg_parser;
