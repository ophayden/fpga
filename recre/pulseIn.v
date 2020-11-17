'timescale = 1ns / 1ps

//the goal of this is to recreate the pulseIn() function that arduinos do
//it receives two pulses and returns the time in microseconds between them 

module pulsein(
    input clk,
    input rst,
    input pulse,
    output led[15:0],
);
reg [31:0] count = 0;

always@(posedge(clk) begin
    if(rst) count = 0;
    count <= count + 1;
    
end