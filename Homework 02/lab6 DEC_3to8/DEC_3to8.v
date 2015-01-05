`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:17:20 10/16/2013 
// Design Name: 
// Module Name:    DEC_3to8 
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
module DEC_3to8(
	input wire[2:0] a,
	output wire[7:0] y
);

	assign y[0] = !a[2] & !a[1] & !a[0];
	assign y[1] = !a[2] & !a[1] & a[0];
	assign y[2] = !a[2] & a[1] & !a[0];
	assign y[3] = !a[2] & a[1] & a[0];
	assign y[4] = a[2] & !a[1] & !a[0];
	assign y[5] = a[2] & !a[1] & a[0];
	assign y[6] = a[2] & a[1] & !a[0];
	assign y[7] = a[2] & a[1] & a[0];

endmodule
