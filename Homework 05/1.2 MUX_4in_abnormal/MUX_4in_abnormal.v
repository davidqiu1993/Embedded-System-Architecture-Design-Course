`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:40:06 10/31/2013 
// Design Name: 
// Module Name:    MUX_4input_abnormal 
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
module MUX_4input_abnormal(
  input wire[1:0] S,
  input wire[3:0] D,
  output reg Q );

  always@(*) begin
    case(S)
      2'b 00:  Q <= D[0];
      2'b 01:  Q <= D[1];
      2'b 10:  Q <= D[2];
      //2'b 11:  Q <= D[3];
      //default: Q <= D[0];
    endcase
  end

endmodule
