`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Sun Yat-Sen Univ.
// Engineer:       David Qiu (SNO: 11331262)
// 
// Create Date:    14:01:36 10/10/2013 
// Design Name:    2-Input Comparator
// Module Name:    COMP_2BIT 
// Project Name:   Comparator_2IN
// Target Devices: Nexys3 (Spartan-6)
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

module COMP_2BIT( input wire[1:0] b, 
                  input wire[1:0] a,
						output wire a_eq_b,
						output wire a_gt_b,
						output wire a_lt_b );

    assign a_eq_b = a == b;
	 assign a_gt_b = a > b;
	 assign a_lt_b = a < b;

endmodule
