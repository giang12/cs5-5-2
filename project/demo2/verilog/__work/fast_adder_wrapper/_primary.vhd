library verilog;
use verilog.vl_types.all;
entity fast_adder_wrapper is
    port(
        \OUT\           : out    vl_logic_vector(15 downto 0);
        ofl             : out    vl_logic;
        cout            : out    vl_logic;
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        ci              : in     vl_logic;
        sign            : in     vl_logic
    );
end fast_adder_wrapper;
