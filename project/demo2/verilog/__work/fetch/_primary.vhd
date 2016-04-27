library verilog;
use verilog.vl_types.all;
entity fetch is
    port(
        instr           : out    vl_logic_vector(15 downto 0);
        pccurrent       : out    vl_logic_vector(15 downto 0);
        pcplustwo       : out    vl_logic_vector(15 downto 0);
        pcnext          : in     vl_logic_vector(15 downto 0);
        pcwriteen       : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        exception       : in     vl_logic;
        pcsel           : in     vl_logic
    );
end fetch;