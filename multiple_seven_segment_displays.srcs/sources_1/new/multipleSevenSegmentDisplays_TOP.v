`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 04:31:28 PM
// Design Name: 
// Module Name: multipleSevenSegmentDisplays_TOP
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


module multipleSevenSegmentDisplays_TOP(
clk, ssdCathode, ssdAnode
    );
input wire clk;
wire reset = 1'b0;
wire beat;
reg [1:0] activeDisplay;
reg [3:0] ssdValue;
output reg [3:0] ssdAnode;
output wire [6:0] ssdCathode;
heartbeat HB (.clk(clk), .beat(beat),.reset(reset));
reg counter;

always @ (posedge clk) begin
if (activeDisplay >= 4)
activeDisplay = 2'b0;
else if (beat)
activeDisplay = activeDisplay + 1'b1; end

/*
always @ (beat) begin
if (activeDisplay >= 4)
activeDisplay = 2'b0;
else
activeDisplay = activeDisplay + 1'b1; end */
// result: 1 3

always @(*) begin
    case(activeDisplay)
        2'd0 : begin
            ssdValue = 4'd0; //1st digit of the year
            ssdAnode = 4'b0111; end
        2'd1 : begin
            ssdValue = 4'd6; //2nd digit of the year
            ssdAnode = 4'b1011; end
        2'd2 : begin
            ssdValue = 4'd0; //3nd digit of the year
            ssdAnode = 4'b1101; end
        2'd3 : begin
            ssdValue = 4'd6; //4nd digit of the year
            ssdAnode = 4'b1110; end           
        default : begin
            ssdValue = 4'd1111; end // undefined ssdAnode = 4'b1111; // none active end
        endcase end
sevenSegmentDecoder u1 (.bcd(ssdValue), .ssd(ssdCathode));

endmodule
