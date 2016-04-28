library verilog;
use verilog.vl_types.all;
entity special_control is
    port(
        instr           : in     vl_logic_vector(4 downto 0);
        dump            : out    vl_logic
    );
end special_control;
