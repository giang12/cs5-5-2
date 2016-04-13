library verilog;
use verilog.vl_types.all;
entity clu_16bit is
    port(
        co              : out    vl_logic_vector(15 downto 0);
        ci              : in     vl_logic;
        p               : in     vl_logic_vector(15 downto 0);
        g               : in     vl_logic_vector(15 downto 0)
    );
end clu_16bit;
