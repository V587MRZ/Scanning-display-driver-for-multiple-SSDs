`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 01:03:49 PM
// Design Name: 
// Module Name: heartbeat
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


module heartbeat(
clk,reset,beat
    );
parameter integer TOPCOUNT = 100_000;
input wire clk,reset;
output wire beat;
reg [31:0] counter;
always @ (posedge clk)
begin
if (reset || counter >= TOPCOUNT-1) begin
counter <= 32'b0; end
else if (counter < TOPCOUNT-1) begin
counter <= counter + 1'b1;end
end
assign beat = (counter == TOPCOUNT-1);
endmodule
