library verilog;
use verilog.vl_types.all;
entity regifid is
    port(
        instr_out       : out    vl_logic_vector(15 downto 0);
        pcplustwo_out   : out    vl_logic_vector(15 downto 0);
        pccurrent_out   : out    vl_logic_vector(15 downto 0);
        err_out         : out    vl_logic;
        clk             : in     vl_logic;
        en              : in     vl_logic;
        rst             : in     vl_logic;
        pcplustwo_in    : in     vl_logic_vector(15 downto 0);
        pccurrent_in    : in     vl_logic_vector(15 downto 0);
        instr_in        : in     vl_logic_vector(15 downto 0);
        err_in          : in     vl_logic
    );
end regifid;
