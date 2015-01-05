`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:22 11/06/2013 
// Design Name: 
// Module Name:    S2P_4bit 
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
module S2P_4bit(
  input wire CLK, CLR, D,
  output reg DR,
  output reg[3:0] Q
);

  reg[1:0] count;    // Clock pulse counter
  reg[3:0] dff_Q;    // Inner D flip-flop output
  reg[1:0] DR_begin; // Indicates the beginning of DR output
  
  initial begin
    count <= 0;
    DR <= 0;
    dff_Q <= 0;
    Q <= 0;
    DR_begin <= 0;
  end
  
  always@(posedge CLK, posedge CLR) begin
    // Inner D flip-flop 3
    if(CLR) dff_Q[3] <= 0;
    else    dff_Q[3] <= D;
    
    // Inner D flip-flop 2
    if(CLR) dff_Q[2] <= 0;
    else    dff_Q[2] <= dff_Q[3];
    
    // Inner D flip-flop 1
    if(CLR) dff_Q[1] <= 0;
    else    dff_Q[1] <= dff_Q[2];
    
    // Inner D flip-flop 0
    if(CLR) dff_Q[0] <= 0;
    else    dff_Q[0] <= dff_Q[1];
  end
  
  always@(posedge CLK) begin
    // Clock pulse counter
    count <= count + 2'b 01;
  end
  
  always@(posedge CLK) begin
    if(!count[1] & !count[0]) begin
      Q <= dff_Q;
      if(!DR_begin[1]) DR_begin = DR_begin + 2'b 01;
      else DR <= 1;
    end
    else DR <= 0;
  end

endmodule
