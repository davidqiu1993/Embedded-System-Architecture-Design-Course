`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:16 10/23/2013 
// Design Name: 
// Module Name:    CONV_BIN_BCD 
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
module CONV_BIN_BCD(input wire[3:0] b, output wire[4:0] p);
  
  reg[3:0] rb;
  reg[4:0] rp;
  
  always@(*) begin
    rb = b;
    
    if(rb < 10) begin
      rp[3:0] = rb;
      rp[4] = 0;
    end
    else begin
      rp[3:0] = rb - 4'b 1010;
      rp[4] = 1;
    end
  end
  
  assign p = rp;

endmodule
