library verilog;
use verilog.vl_types.all;
entity seven_seg_B is
    port(
        value           : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        alphanumeric    : out    vl_logic_vector(5 downto 0)
    );
end seven_seg_B;
