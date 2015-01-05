`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:15:19 10/16/2013 
// Design Name: 
// Module Name:    DEC_7seg 
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
module DEC_7seg(
	input wire[3:0] X,
	output wire a,b,c,d,e,f,g,
	output wire act, neg
);
	
	assign a = X==1
				| X==4
				| X==11
				| X==13;
	
	assign b = X==5
				| X==6
				| X==11
				| X==12
				| X==14
				| X==15;
	
	assign c = X==2
				| X==12
				| X==14
				| X==15;
	
	assign d = X==1
				| X==4
				| X==7
				| X==10
				| X==15;
	
	assign e = X==1
				| X==3
				| X==4
				| X==5
				| X==7
				| X==9;
	
	assign f = X==1
				| X==2
				| X==3
				| X==7
				| X==13;
	
	assign g = X==0
				| X==1
				| X==7
				| X==12;
	
	assign act = 1;
	assign neg = 0;

endmodule

