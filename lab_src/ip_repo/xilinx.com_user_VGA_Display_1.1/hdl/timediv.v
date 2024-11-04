`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/29 16:06:05
// Design Name: 
// Module Name: timediv
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


module timediv(
    inout wire clk_100,
    output reg clk_25
    );
    reg[1:0] cnt;
    always@(posedge clk_100) begin
    cnt<=cnt+1;
    if(cnt<2'b11) clk_25<=1'b0;
    else clk_25<=1'b1;
    end
endmodule
