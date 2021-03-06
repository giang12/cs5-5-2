library verilog;
use verilog.vl_types.all;
entity regidex is
    port(
        instr_out       : out    vl_logic_vector(15 downto 0);
        pc_plus_two_out : out    vl_logic_vector(15 downto 0);
        read_data_1_out : out    vl_logic_vector(15 downto 0);
        read_data_2_out : out    vl_logic_vector(15 downto 0);
        imm_5_ext_out   : out    vl_logic_vector(15 downto 0);
        imm_8_ext_out   : out    vl_logic_vector(15 downto 0);
        imm_11_ext_out  : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        en              : in     vl_logic;
        rst             : in     vl_logic;
        instr_in        : in     vl_logic_vector(15 downto 0);
        pcplustwo_in    : in     vl_logic_vector(15 downto 0);
        read1data_in    : in     vl_logic_vector(15 downto 0);
        read2data_in    : in     vl_logic_vector(15 downto 0);
        instrfiveext_in : in     vl_logic_vector(15 downto 0);
        instreightext_in: in     vl_logic_vector(15 downto 0);
        instrelevenext_in: in     vl_logic_vector(15 downto 0);
        op_out          : out    vl_logic_vector(2 downto 0);
        alusrc1_out     : out    vl_logic_vector(2 downto 0);
        alusrc2_out     : out    vl_logic_vector(2 downto 0);
        cin_out         : out    vl_logic;
        inva_out        : out    vl_logic;
        invb_out        : out    vl_logic;
        sign_out        : out    vl_logic;
        jump_out        : out    vl_logic;
        branch_out      : out    vl_logic;
        memen_out       : out    vl_logic;
        memwr_out       : out    vl_logic;
        dump_out        : out    vl_logic;
        regdst_out      : out    vl_logic_vector(1 downto 0);
        regdatasrc_out  : out    vl_logic_vector(2 downto 0);
        regwriteen_out  : out    vl_logic;
        op_in           : in     vl_logic_vector(2 downto 0);
        alusrc1_in      : in     vl_logic_vector(2 downto 0);
        alusrc2_in      : in     vl_logic_vector(2 downto 0);
        cin_in          : in     vl_logic;
        inva_in         : in     vl_logic;
        invb_in         : in     vl_logic;
        sign_in         : in     vl_logic;
        jump_in         : in     vl_logic;
        branch_in       : in     vl_logic;
        memen_in        : in     vl_logic;
        memwr_in        : in     vl_logic;
        dump_in         : in     vl_logic;
        regdst_in       : in     vl_logic_vector(1 downto 0);
        regdatasrc_in   : in     vl_logic_vector(2 downto 0);
        regwriteen_in   : in     vl_logic;
        dst_reg_num_in  : in     vl_logic_vector(2 downto 0);
        dst_reg_num_out : out    vl_logic_vector(2 downto 0)
    );
end regidex;
