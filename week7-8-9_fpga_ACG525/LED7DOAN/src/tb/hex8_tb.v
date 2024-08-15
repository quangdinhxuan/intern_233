`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/20 17:57:06
// Design Name: hex8
// Module Name: hex8
// Project Name: hex8
// Target Devices: XC7A35T-2FGG484I
// Tool Versions: Vivado 2018.3
// Description: ��hex8�ļ����в��ԣ��۲�������ݣ���ѡ��λѡ�źŵ�ֵ�Ƿ�����
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ns

`define clk_period 20

module hex8_tb;

	reg clk;	//50M
	reg reset_n;
	reg en;	//�������ʾʹ�ܣ�1ʹ�ܣ�0�ر�
	
	reg [31:0]disp_data;
	
	wire [7:0] sel;//�����λѡ��ѡ��ǰҪ��ʾ������ܣ�
	wire [6:0] seg;//����ܶ�ѡ����ǰҪ��ʾ������)
	
	hex8 hex8(
		.clk(clk),
		.reset_n(reset_n),
		.en(en),
		.disp_data(disp_data),
		.sel(sel),
		.seg(seg)
	);
	
	initial clk = 1;
	always#(`clk_period/2) clk = ~clk;
	
	initial begin
		reset_n = 1'b0;
		en = 1;
		disp_data = 32'h12345678;
		#(`clk_period*20);
		reset_n = 1;
		#(`clk_period*20);
		#20000000;
		disp_data = 32'h87654321;
		#20000000;
		disp_data = 32'h89abcdef;
		#20000000;
		$stop;
	end

endmodule
