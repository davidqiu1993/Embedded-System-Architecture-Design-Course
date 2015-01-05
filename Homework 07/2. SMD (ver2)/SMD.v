`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:37:59 11/21/2013 
// Design Name: 
// Module Name:    SMD 
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
//    ret[3] = dispense;
//    ret[2] = return nickel;
//    ret[1] = return dime;
//    ret[0] = return two dimes;
//
//////////////////////////////////////////////////////////////////////////////////
module SMD(
  input wire CLK,
  input wire nickel, dime, quarter,
  output reg[2:0] state, // 0, 5, 10, 15, 20
  output reg[3:0] ret
);

  reg[2:0] hold;
  
  
  // Initialization
  initial begin
    state <= 0;
    ret   <= 0;
    hold  <= 0;
  end
  
  
  // Runtime features
  always@(posedge CLK) begin
    // Putting coin
    if(hold == 3'b000) begin
      if(nickel)  hold = 3'b001;
      if(dime)    hold = 3'b010;
      if(quarter) hold = 3'b100;
    end
    // Coin put
    else if(!nickel&!dime&!quarter) begin
      // Put nickel=5
      if(hold[0]) begin
        if(state[2]) begin
          state <= 3'b000;
          ret <= 4'b1000;
        end
        else begin
          state <= state + 3'b001;
          ret <= 4'b0000;
        end
      end
      
      // Put dime=10
      if(hold[1]) begin
        if(!state[2]) begin
          if(state[1]&state[0]) begin // 15 + 10 = soda + 0
            state <= 3'b000;
            ret <= 4'b1000;
          end
          else begin
            state <= state + 3'b010;
            ret <= 4'b0000;
          end
        end
        else begin // 20 + 10 = soda + 5
          state <= 3'b000;
          ret <= 4'b1100;
        end
      end
      
      // Put quarter=25
      if(hold[2]) begin
        case(state)
          3'b000:  ret <= 4'b1000;
          3'b001:  ret <= 4'b1100;
          3'b010:  ret <= 4'b1010;
          3'b011:  ret <= 4'b1110;
          default: ret <= 4'b1001;
        endcase
        state <= 3'b000;
      end
      
      // Clear coin state
      hold = 0;
    end
  end

endmodule
