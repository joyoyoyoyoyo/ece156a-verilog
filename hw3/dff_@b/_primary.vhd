library verilog;
use verilog.vl_types.all;
entity dff_B is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic;
        q_bar           : out    vl_logic;
        d               : in     vl_logic
    );
end dff_B;
