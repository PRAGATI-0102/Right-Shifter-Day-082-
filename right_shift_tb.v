`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2023 12:21:13 AM
// Design Name: 
// Module Name: right_shift_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module right_shift_tb();

    reg clk, rst;
	reg [3:0] din;
	wire [3:0] dout;

	right_shift dut(
	  .clk(clk),
	  .rst(rst),
	  .din(din),
	  .dout(dout)
	);

		initial 
		begin
		  clk = 0;
		  forever #5 clk = ~clk;
		end

		initial 
		begin
		  rst = 1;
		  din = 4'b0001;
		  #10 rst = 0;
		      din = 4'b0000;
		  #10 din = 4'b0001;
		  #10 din = 4'b0010;
		  #10 din = 4'b0100;
		  #10 din = 4'b1000;
		  #10 din = 4'b0000;
		  #10 din = 4'b0001;
		  #10 din = 4'b0010;
		  #10 din = 4'b0100;
		  #110;
		  $finish;
		end

endmodule
