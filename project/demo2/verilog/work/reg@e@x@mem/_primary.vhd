library verilog;
use verilog.vl_types.all;
entity regexmem is
    port(
        pc_plus_two_out : out    vl_logic_vector(15 downto 0);
        imm_8_ext_out   : out    vl_logic_vector(15 downto 0);
        aluresult_out   : out    vl_logic_vector(15 downto 0);
        writedata_out   : out    vl_logic_vector(15 downto 0);
        btr_out_out     : out    vl_logic_vector(15 downto 0);
        instr_out       : out    vl_logic_vector(15 downto 0);
        set_out         : out    vl_logic_vector(15 downto 0);
        memen_out       : out    vl_logic;
        memwr_out       : out    vl_logic;
        halt_out        : out    vl_logic;
        regdatasrc_out  : out    vl_logic_vector(2 downto 0);
        regwriteen_out  : out    vl_logic;
        pc_plus_two_in  : in     vl_logic_vector(15 downto 0);
        imm_8_ext_in    : in     vl_logic_vector(15 downto 0);
        out_in          : in     vl_logic_vector(15 downto 0);
        read_data_2_in  : in     vl_logic_vector(15 downto 0);
        btr_out_in      : in     vl_logic_vector(15 downto 0);
        instr_in        : in     vl_logic_vector(15 downto 0);
        set_in          : in     vl_logic_vector(15 downto 0);
        memen_in        : in     vl_logic;
        memwr_in        : in     vl_logic;
        dump_in         : in     vl_logic;
        regdatasrc_in   : in     vl_logic_vector(2 downto 0);
        regwriteen_in   : in     vl_logic
    );
end regexmem;