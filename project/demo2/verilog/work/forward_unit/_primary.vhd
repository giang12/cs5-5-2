library verilog;
use verilog.vl_types.all;
entity forward_unit is
    port(
        forwarda        : out    vl_logic_vector(1 downto 0);
        forwardb        : out    vl_logic_vector(1 downto 0);
        vaildrt         : in     vl_logic;
        idex_instr      : in     vl_logic_vector(15 downto 0);
        exmem_regwriteen: in     vl_logic;
        memwb_regwriteen: in     vl_logic;
        exmem_regdst    : in     vl_logic_vector(2 downto 0);
        memwb_regdst    : in     vl_logic_vector(2 downto 0)
    );
end forward_unit;
