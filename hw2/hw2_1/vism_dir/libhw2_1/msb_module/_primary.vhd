library verilog;
use verilog.vl_types.all;
entity msb_module is
    port(
        \Out\           : out    vl_logic;
        ina             : in     vl_logic;
        inb             : in     vl_logic;
        inc             : in     vl_logic;
        ind             : in     vl_logic;
        en              : in     vl_logic;
        op              : in     vl_logic_vector(1 downto 0)
    );
end msb_module;
