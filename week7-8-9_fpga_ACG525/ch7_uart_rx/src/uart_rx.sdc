create_clock -name tck -period 80 -waveform {0 40} [get_ports {tck_pad_i}]
buf #(0.5) delay_buf (.I(gw_gao_inst_0/u_la0_top/capture_window_sel_11_s1/Q), .O(gw_gao_inst_0/u_la0_top/capture_end_tck_0_s0/D));
