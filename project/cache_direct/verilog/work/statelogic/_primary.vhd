library verilog;
use verilog.vl_types.all;
entity statelogic is
    port(
        next_state      : out    vl_logic_vector(3 downto 0);
        mem_offset      : out    vl_logic_vector(1 downto 0);
        wr              : out    vl_logic;
        rd              : out    vl_logic;
        cache_offset    : out    vl_logic_vector(1 downto 0);
        write           : out    vl_logic;
        comp            : out    vl_logic;
        enable          : out    vl_logic;
        cache_stall     : out    vl_logic;
        state           : in     vl_logic_vector(3 downto 0);
        \Rd\            : in     vl_logic;
        \Wr\            : in     vl_logic;
        stall           : in     vl_logic;
        valid           : in     vl_logic;
        dirty           : in     vl_logic;
        hit             : in     vl_logic
    );
end statelogic;
