library verilog;
use verilog.vl_types.all;
entity decode is
    port(
        instr           : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        read1data       : out    vl_logic_vector(15 downto 0);
        read2data       : out    vl_logic_vector(15 downto 0);
        writedata       : in     vl_logic_vector(15 downto 0);
        instreightext   : out    vl_logic_vector(15 downto 0);
        instrfiveext    : out    vl_logic_vector(15 downto 0);
        btr_out         : out    vl_logic_vector(15 downto 0);
        if_flush        : out    vl_logic;
        actual_control_signals: out    vl_logic_vector(31 downto 0);
        next_pc         : out    vl_logic_vector(15 downto 0);
        pcwriteen       : out    vl_logic;
        ifidwriteen     : out    vl_logic;
        pc_plus_two     : in     vl_logic_vector(15 downto 0);
        pc              : in     vl_logic_vector(15 downto 0);
        idex_instr      : in     vl_logic_vector(15 downto 0);
        idex_mem_en     : in     vl_logic;
        idex_mem_wr     : in     vl_logic;
        memwb_instr     : in     vl_logic_vector(15 downto 0);
        memwb_regwriteen: in     vl_logic;
        memwb_regdst    : in     vl_logic_vector(1 downto 0)
    );
end decode;
