'timescale 1ns / 1ps
module lights(
    input bits[7:0],
    input butt,
    output led[15:0]
);
always @(posedge butt)