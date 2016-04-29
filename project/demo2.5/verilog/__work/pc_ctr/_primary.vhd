library verilog;
use verilog.vl_types.all;
entity pc_ctr is
    port(
        pc_src          : out    vl_logic_vector(2 downto 0);
        jump            : in     vl_logic;
        zero            : in     vl_logic;
        alu_out_msb     : in     vl_logic;
        instr           : in     vl_logic_vector(1 downto 0)
    );
end pc_ctr;
