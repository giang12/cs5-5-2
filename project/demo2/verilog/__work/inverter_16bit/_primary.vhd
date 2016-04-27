library verilog;
use verilog.vl_types.all;
entity inverter_16bit is
    port(
        \Out\           : out    vl_logic_vector(15 downto 0);
        \In\            : in     vl_logic_vector(15 downto 0);
        inv             : in     vl_logic
    );
end inverter_16bit;
