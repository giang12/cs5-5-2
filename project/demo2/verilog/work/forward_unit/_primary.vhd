library verilog;
use verilog.vl_types.all;
entity forward_unit is
    port(
        alusel1         : out    vl_logic;
        alusel2         : out    vl_logic;
        idex_instr      : in     vl_logic_vector(15 downto 0);
        exmem_instr     : in     vl_logic_vector(15 downto 0);
        memwb_instr     : in     vl_logic_vector(15 downto 0);
        exmem_wb        : in     vl_logic;
        memwb_wb        : in     vl_logic
    );
end forward_unit;
