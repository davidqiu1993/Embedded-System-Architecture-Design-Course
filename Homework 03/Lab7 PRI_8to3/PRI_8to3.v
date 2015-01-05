`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Sun Yat-Sen Univ.
// Engineer:       David Qiu (SNO: 11331262)
// 
// Create Date:    16:32:21 10/23/2013 
// Design Name:    8-To-3 Priority Decoder
// Module Name:    PRI_8to3
// Project Name:   PRI_8to3
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
module PRI_8to3(input wire[7:0] x, output wire[2:0] y, output wire Valid);

  assign y[2] = x[7] | x[6] | x[5] | x[4];
  
  assign y[1] = x[7] | x[6] 
              | (~x[5] & ~x[4] & (x[3] | x[2]));
  
  assign y[0] = x[7]
              | (~x[6] & x[5])
              | (~x[6] & ~x[4] & x[3])
              | (~x[6] & ~x[4] & ~x[2] & x[1]);
  
  assign Valid = ~(x[7] | x[6] | x[5] | x[4] | x[3] | x[2] | x[1] | x[0]);

endmodule
