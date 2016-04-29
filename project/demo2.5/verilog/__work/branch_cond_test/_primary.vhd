library verilog;
use verilog.vl_types.all;
entity branch_cond_test is
    port(
        data            : in     vl_logic_vector(15 downto 0);
        instr           : in     vl_logic_vector(1 downto 0);
        branch          : in     vl_logic;
        jump            : in     vl_logic;
        pc_src          : out    vl_logic_vector(2 downto 0);
        flush           : out    vl_logic
    );
end branch_cond_test;
