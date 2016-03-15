library verilog;
use verilog.vl_types.all;
entity fetch is
    port(
        instr           : out    vl_logic_vector(15 downto 0);
        pccurrent       : out    vl_logic_vector(15 downto 0);
        pcplustwo       : out    vl_logic_vector(15 downto 0);
        pcnext          : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        dump            : in     vl_logic
    );
end fetch;
