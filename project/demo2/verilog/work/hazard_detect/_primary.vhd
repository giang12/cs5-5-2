library verilog;
use verilog.vl_types.all;
entity hazard_detect is
    port(
        pcwriteen       : out    vl_logic;
        ifidwriteen     : out    vl_logic;
        control_sel     : out    vl_logic;
        idex_instr      : in     vl_logic_vector(15 downto 0);
        ifid_instr      : in     vl_logic_vector(15 downto 0);
        idex_mem_en     : in     vl_logic;
        idex_mem_wr     : in     vl_logic
    );
end hazard_detect;
