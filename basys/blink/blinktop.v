`timescale 1ns / 1ps

module blinktop(
    input clk,
    //input [15:0] sw,
    output [15:0] led
    );
reg [35:0] count = 0;
assign led[15:0]=count[35:20];
always @ (posedge(clk)) count <= count + 1;

//assign sw[15:1]=led[15:1];is
    
endmodule
