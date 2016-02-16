library verilog;
use verilog.vl_types.all;
entity claadder_4bit is
    port(
        s               : out    vl_logic_vector(3 downto 0);
        co              : out    vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        ci              : in     vl_logic;
        p               : out    vl_logic;
        g               : out    vl_logic
    );
end claadder_4bit;
