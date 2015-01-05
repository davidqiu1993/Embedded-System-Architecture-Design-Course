`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:07 10/16/2013 
// Design Name: 
// Module Name:    MUX_4bit_2to1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX_4bit_2to1(
	input wire[3:0] a,
	input wire[3:0] b,
	input wire s,
	output wire[3:0] y
);

	assign y = (s) ? (b) : (a);

endmodule
