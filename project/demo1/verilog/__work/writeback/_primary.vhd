library verilog;
use verilog.vl_types.all;
entity writeback is
    port(
        write_data      : out    vl_logic_vector(15 downto 0);
        regdatasrc      : in     vl_logic_vector(2 downto 0);
        mem_data_out    : in     vl_logic_vector(15 downto 0);
        alu_out         : in     vl_logic_vector(15 downto 0);
        imm_8_ext       : in     vl_logic_vector(15 downto 0);
        pc_plus_two     : in     vl_logic_vector(15 downto 0);
        cond_set        : in     vl_logic_vector(15 downto 0)
    );
end writeback;
