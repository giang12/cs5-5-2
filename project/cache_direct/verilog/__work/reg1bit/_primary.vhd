library verilog;
use verilog.vl_types.all;
entity reg1bit is
    port(
        dff_out         : out    vl_logic;
        \in\            : in     vl_logic;
        en              : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end reg1bit;
