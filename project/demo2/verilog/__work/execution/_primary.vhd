library verilog;
use verilog.vl_types.all;
entity execution is
    port(
        \Out\           : out    vl_logic_vector(15 downto 0);
        set             : out    vl_logic_vector(15 downto 0);
        btr_out         : out    vl_logic_vector(15 downto 0);
        flush           : out    vl_logic;
        next_pc         : out    vl_logic_vector(15 downto 0);
        data_to_mem     : out    vl_logic_vector(15 downto 0);
        instr           : in     vl_logic_vector(15 downto 0);
        read_data_1     : in     vl_logic_vector(15 downto 0);
        read_data_2     : in     vl_logic_vector(15 downto 0);
        imm_5_ext       : in     vl_logic_vector(15 downto 0);
        imm_8_ext       : in     vl_logic_vector(15 downto 0);
        imm_11_ext      : in     vl_logic_vector(15 downto 0);
        pc_plus_two     : in     vl_logic_vector(15 downto 0);
        branch          : in     vl_logic;
        jump            : in     vl_logic;
        alusrc1         : in     vl_logic_vector(2 downto 0);
        alusrc2         : in     vl_logic_vector(2 downto 0);
        op              : in     vl_logic_vector(2 downto 0);
        cin             : in     vl_logic;
        inva            : in     vl_logic;
        invb            : in     vl_logic;
        sign            : in     vl_logic;
        idex_instr      : in     vl_logic_vector(15 downto 0);
        exmem_regwriteen: in     vl_logic;
        memwb_regwriteen: in     vl_logic;
        exmem_dstregnum : in     vl_logic_vector(2 downto 0);
        memwb_dstregnum : in     vl_logic_vector(2 downto 0);
        wb_data         : in     vl_logic_vector(15 downto 0);
        exmem_data      : in     vl_logic_vector(15 downto 0)
    );
end execution;
