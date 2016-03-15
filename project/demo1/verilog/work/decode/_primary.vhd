library verilog;
use verilog.vl_types.all;
entity decode is
    port(
        regdatasrc      : out    vl_logic_vector(2 downto 0);
        alusrc1         : out    vl_logic_vector(2 downto 0);
        alusrc2         : out    vl_logic_vector(2 downto 0);
        op              : out    vl_logic_vector(2 downto 0);
        memen           : out    vl_logic;
        memwr           : out    vl_logic;
        aluctr          : out    vl_logic;
        branch          : out    vl_logic;
        jump            : out    vl_logic;
        exception       : out    vl_logic;
        cin             : out    vl_logic;
        inva            : out    vl_logic;
        invb            : out    vl_logic;
        sign            : out    vl_logic;
        instr           : in     vl_logic_vector(15 downto 0);
        read1data       : out    vl_logic_vector(15 downto 0);
        read2data       : out    vl_logic_vector(15 downto 0);
        writedata       : in     vl_logic_vector(15 downto 0);
        instreightext   : out    vl_logic_vector(15 downto 0);
        instrelevenext  : out    vl_logic_vector(15 downto 0);
        instrfiveext    : out    vl_logic_vector(15 downto 0)
    );
end decode;
