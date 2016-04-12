library verilog;
use verilog.vl_types.all;
entity clu_4bit is
    port(
        pg              : out    vl_logic;
        gg              : out    vl_logic;
        ci              : in     vl_logic;
        co              : out    vl_logic_vector(3 downto 0);
        p               : in     vl_logic_vector(3 downto 0);
        g               : in     vl_logic_vector(3 downto 0)
    );
end clu_4bit;
