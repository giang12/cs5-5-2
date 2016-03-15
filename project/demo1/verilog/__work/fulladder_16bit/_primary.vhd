library verilog;
use verilog.vl_types.all;
entity fulladder_16bit is
    port(
        s               : out    vl_logic_vector(15 downto 0);
        p               : out    vl_logic_vector(15 downto 0);
        g               : out    vl_logic_vector(15 downto 0);
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        ci              : in     vl_logic_vector(15 downto 0)
    );
end fulladder_16bit;
