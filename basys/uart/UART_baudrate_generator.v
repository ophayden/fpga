`timescale 1ns / 1ps

module UART_BaudRate_generator(
    input           Clk,                  
    input           Rst_n,                
    input [15:0]    BaudRate,            
    output          Tick                 
    );


reg [15:0]      baudRateReg;
 

always @(posedge Clk or negedge Rst_n)
    if (!Rst_n) baudRateReg <= 16'b1;
    else if (Tick) baudRateReg <= 16'b1;
         else baudRateReg <= baudRateReg + 1'b1;
assign Tick = (baudRateReg == BaudRate);
endmodule

