set_property SRC_FILE_INFO {cfile:s:/360Downloads/Pipeline/Pipeline.srcs/sources_1/ip/clk_div/clk_div.xdc rfile:../../../Pipeline.srcs/sources_1/ip/clk_div/clk_div.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
