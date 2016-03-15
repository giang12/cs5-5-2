library verilog;
use verilog.vl_types.all;
entity control is
    port(
        regdst          : out    vl_logic_vector(1 downto 0);
        regdatasrc      : out    vl_logic_vector(2 downto 0);
        alusrc1         : out    vl_logic_vector(2 downto 0);
        alusrc2         : out    vl_logic_vector(2 downto 0);
        regwriteen      : out    vl_logic;
        memen           : out    vl_logic;
        memwr           : out    vl_logic;
        signedext       : out    vl_logic;
        branch          : out    vl_logic;
        jump            : out    vl_logic;
        exception       : out    vl_logic;
        op              : out    vl_logic_vector(2 downto 0);
        cin             : out    vl_logic;
        inva            : out    vl_logic;
        invb            : out    vl_logic;
        sign            : out    vl_logic;
        instr1          : in     vl_logic_vector(4 downto 0);
        instr2          : in     vl_logic_vector(1 downto 0)
    );
end control;
