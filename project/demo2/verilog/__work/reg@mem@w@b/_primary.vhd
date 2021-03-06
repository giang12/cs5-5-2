library verilog;
use verilog.vl_types.all;
entity regmemwb is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        instr           : out    vl_logic_vector(15 downto 0);
        mem_data_out    : out    vl_logic_vector(15 downto 0);
        alu_out         : out    vl_logic_vector(15 downto 0);
        imm_8_ext       : out    vl_logic_vector(15 downto 0);
        btr_out         : out    vl_logic_vector(15 downto 0);
        pc_plus_two     : out    vl_logic_vector(15 downto 0);
        cond_set        : out    vl_logic_vector(15 downto 0);
        regdst_out      : out    vl_logic_vector(1 downto 0);
        regdatasrc_out  : out    vl_logic_vector(2 downto 0);
        regwriteen_out  : out    vl_logic;
        instr_in        : in     vl_logic_vector(15 downto 0);
        readdata_in     : in     vl_logic_vector(15 downto 0);
        aluresult_in    : in     vl_logic_vector(15 downto 0);
        imm_8_ext_in    : in     vl_logic_vector(15 downto 0);
        btr_out_in      : in     vl_logic_vector(15 downto 0);
        pc_plus_two_in  : in     vl_logic_vector(15 downto 0);
        set_in          : in     vl_logic_vector(15 downto 0);
        regdst_in       : in     vl_logic_vector(1 downto 0);
        regdatasrc_in   : in     vl_logic_vector(2 downto 0);
        regwriteen_in   : in     vl_logic;
        dst_reg_num_in  : in     vl_logic_vector(2 downto 0);
        dst_reg_num_out : out    vl_logic_vector(2 downto 0)
    );
end regmemwb;
