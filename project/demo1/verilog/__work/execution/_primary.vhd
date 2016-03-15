library verilog;
use verilog.vl_types.all;
entity execution is
    port(
        next_pc         : out    vl_logic_vector(15 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0);
        set             : out    vl_logic_vector(15 downto 0);
        instr           : in     vl_logic_vector(15 downto 0);
        pc_plus_two     : in     vl_logic_vector(15 downto 0);
        pc              : in     vl_logic_vector(15 downto 0);
        read_data_1     : in     vl_logic_vector(15 downto 0);
        read_data_2     : in     vl_logic_vector(15 downto 0);
        imm_5_ext       : in     vl_logic_vector(15 downto 0);
        imm_8_ext       : in     vl_logic_vector(15 downto 0);
        imm_11_ext      : in     vl_logic_vector(15 downto 0);
        alusrc1         : in     vl_logic_vector(2 downto 0);
        alusrc2         : in     vl_logic_vector(2 downto 0);
        op              : in     vl_logic_vector(2 downto 0);
        cin             : in     vl_logic;
        inva            : in     vl_logic;
        invb            : in     vl_logic;
        sign            : in     vl_logic;
        jump            : in     vl_logic;
        branch          : in     vl_logic
    );
end execution;
