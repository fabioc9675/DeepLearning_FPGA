// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2023 23:22:30
// Design Name: 
// Module Name: relu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ReLU #(
    parameter dataWidth = 16,
    weightIntWidth = 4
) (
    input                        clk,
    input      [2*dataWidth-1:0] x,
    output reg [  dataWidth-1:0] out
);

  always @(posedge clk) begin
    if ($signed(x) >= 0) begin
      if (|x[2*dataWidth-1-:weightIntWidth+1])  //over flow to sign bit of integer part
        out <= {'b0, {{dataWidth - 1} {1'b1}}};  // positive saturate
      else out <= x[2*dataWidth-1-weightIntWidth-:dataWidth];
    end else out <= 0;
  end

endmodule
