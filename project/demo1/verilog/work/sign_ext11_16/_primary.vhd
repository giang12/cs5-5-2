library verilog;
use verilog.vl_types.all;
entity sign_ext11_16 is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(10 downto 0)
    );
end sign_ext11_16;
