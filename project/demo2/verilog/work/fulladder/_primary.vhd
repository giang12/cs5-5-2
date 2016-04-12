library verilog;
use verilog.vl_types.all;
entity fulladder is
    port(
        s               : out    vl_logic;
        p               : out    vl_logic;
        g               : out    vl_logic;
        ina             : in     vl_logic;
        inb             : in     vl_logic;
        cin             : in     vl_logic
    );
end fulladder;
