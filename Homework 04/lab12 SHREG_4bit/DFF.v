`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:33 10/25/2013 
// Design Name: 
// Module Name:    D Flip-Flop
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:    The positive-edge activating, asynchronized D flip-flop.
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DFF( input wire CLK, CLR, EN, D, 
            output reg Q );

  always@(posedge CLK, posedge CLR) begin
    if(CLR) Q = 0;
    else if(EN) Q = D;
  end

endmodule
