//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.03 (64-bit)
//Part Number: GW1NSR-LV4CQN48PC6/I5
//Device: GW1NSR-4C
//Created Time: Wed Jul 17 14:16:00 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	Gowin_EMPU_Top your_instance_name(
		.sys_clk(sys_clk), //input sys_clk
		.gpio(gpio), //inout [15:0] gpio
		.uart0_rxd(uart0_rxd), //input uart0_rxd
		.uart0_txd(uart0_txd), //output uart0_txd
		.mosi(mosi), //output mosi
		.miso(miso), //input miso
		.sclk(sclk), //output sclk
		.nss(nss), //output nss
		.reset_n(reset_n) //input reset_n
	);

//--------Copy end-------------------
