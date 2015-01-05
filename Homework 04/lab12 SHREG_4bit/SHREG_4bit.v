`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:24 10/25/2013 
// Design Name: 
// Module Name:    SHREG_4bit 
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
module SHREG_4bit( input wire CLK, CLR, D,
                   output wire[3:0] Q );

  DFF dff3(CLK, CLR, 1'b 1, D, Q[3]);
  DFF dff2(CLK, CLR, 1'b 1, Q[3], Q[2]);
  DFF dff1(CLK, CLR, 1'b 1, Q[2], Q[1]);
  DFF dff0(CLK, CLR, 1'b 1, Q[1], Q[0]);

endmodule
