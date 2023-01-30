// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2023 19:55:09
// Design Name: 
// Module Name: maxFinder
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


module maxFinder #(
    parameter numInput   = 10,
    parameter inputWidth = 16
) (
    input                                  i_clk,
    input      [(numInput*inputWidth)-1:0] i_data,
    input                                  i_valid,
    output reg [                     31:0] o_data,
    output reg                             o_data_valid
);

  reg [inputWidth-1:0] maxValue;
  reg [(numInput*inputWidth)-1:0] inDataBuffer;
  integer counter;

  always @(posedge i_clk) begin
    o_data_valid <= 1'b0;
    if (i_valid) begin
      maxValue <= i_data[inputWidth-1:0];
      counter <= 1;
      inDataBuffer <= i_data;
      o_data <= 0;
    end else if (counter == numInput) begin
      counter <= 0;
      o_data_valid <= 1'b1;
    end else if (counter != 0) begin
      counter <= counter + 1;
      if (inDataBuffer[counter*inputWidth+:inputWidth] > maxValue) begin
        maxValue <= inDataBuffer[counter*inputWidth+:inputWidth];
        o_data   <= counter;
      end
    end
  end

endmodule
