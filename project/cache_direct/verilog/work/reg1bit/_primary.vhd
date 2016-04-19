library verilog;
use verilog.vl_types.all;
entity reg1bit is
    port(
        mux_out         : out    vl_logic;
        dff_out         : out    vl_logic;
        \in\            : in     vl_logic;
        sel             : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end reg1bit;
