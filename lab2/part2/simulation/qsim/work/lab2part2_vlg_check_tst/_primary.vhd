library verilog;
use verilog.vl_types.all;
entity lab2part2_vlg_check_tst is
    port(
        hex0            : in     vl_logic_vector(0 to 6);
        hex1            : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end lab2part2_vlg_check_tst;
