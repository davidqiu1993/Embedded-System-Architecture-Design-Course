`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:49 10/23/2013 
// Design Name: 
// Module Name:    SHF_D4C3 
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
module SHF_D4C3(
  input wire[3:0] d,
  input wire[2:0] s,
  output wire[3:0] y
);

  reg[3:0] rd;
  reg[2:0] rs;
  reg[3:0] ry;
  
  assign y = ry;
  
  always@(*) begin
    rd = d;
    rs = s;
    
    if(rs == 0) begin
      ry = rd;
    end
    else if(rs == 1) begin
      ry[2:0] = rd[3:1];
      ry[3] = 0;
    end
    else if(rs == 2) begin
      ry[3:1] = rd[2:0];
      ry[0] = 0;
    end
    else if(rs == 3) begin
      ry[2:0] = rd[3:1];
      ry[3] = rd[0];
    end
    else if(rs == 4) begin
      ry[3:1] = rd[2:0];
      ry[0] = rd[3];
    end
    else if(rs == 5) begin
      ry[2:0] = rd[3:1];
      ry[3] = rd[3];
    end
    else if(rs == 6) begin
      ry[1:0] = rd[3:2];
      ry[3:2] = rd[1:0];
    end
    else if(rs == 7) begin
      ry = rd;
    end
  end

endmodule
