`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:15:19 10/16/2013 
// Design Name: 
// Module Name:    HEX_7seg 
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
module HEX_7seg(
	input wire[3:0] X,
	output wire[6:0] SEG
);

  assign SEG[0]= X==1
				| X==4
				| X==11
				| X==13;
	
	assign SEG[1]= X==5
				| X==6
				| X==11
				| X==12
				| X==14
				| X==15;
	
	assign SEG[2]= X==2
				| X==12
				| X==14
				| X==15;
	
	assign SEG[3]= X==1
				| X==4
				| X==7
				| X==10
				| X==15;
	
	assign SEG[4]= X==1
				| X==3
				| X==4
				| X==5
				| X==7
				| X==9;
	
	assign SEG[5]= X==1
				| X==2
				| X==3
				| X==7
				| X==13;
	
	assign SEG[6]= X==0
				| X==1
				| X==7
				| X==12;

endmodule

