library verilog;
use verilog.vl_types.all;
entity CompressionFunction_vlg_sample_tst is
    port(
        blockSet        : in     vl_logic;
        clock           : in     vl_logic;
        lastBlock       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CompressionFunction_vlg_sample_tst;
