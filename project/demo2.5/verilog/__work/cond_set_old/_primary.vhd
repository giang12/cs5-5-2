library verilog;
use verilog.vl_types.all;
entity cond_set_old is
    port(
        set             : out    vl_logic_vector(15 downto 0);
        instr           : in     vl_logic_vector(1 downto 0);
        zero            : in     vl_logic;
        cout            : in     vl_logic;
        alu_out_msb     : in     vl_logic
    );
end cond_set_old;
