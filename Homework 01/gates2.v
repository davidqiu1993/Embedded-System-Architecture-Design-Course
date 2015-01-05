`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Sun Yat-Sen Univ.
// Engineer:       David Qiu
// 
// Create Date:    14:37:04 10/06/2013 
// Design Name:    gates2
// Module Name:    gates2 
// Project Name:   gates2
// Target Devices: Nexys3 / Spartan-6
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
module gates2( input wire a, b,
					output wire[5:0] z );
	assign z[5] = a & b;
	assign z[4] = ~(a & b);
	assign z[3] = a | b;
	assign z[2] = ~(a | b);
	assign z[1] = (~a & b) | (a & ~b);
	assign z[0] = (a & b) | (~a & ~b);
endmodule
