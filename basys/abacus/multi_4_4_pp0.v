`timescale 1ns / 1ps
module multi_4_4_pp0(
input clk,
//input clr,
input [3:0] A0_3,
input [3:0] B0_3,
output reg [7:0] pp0
);

reg [7:0] pv;
reg [7:0] bp;  
integer i;


always @(posedge clk)// or posedge clr)
	begin
		pv = 8'b00000000;
		bp = {4'b0000,B0_3};
		for (i = 0; i<=3; i=i+1)
			begin
				if (A0_3[i] == 1)
				pv = pv+bp;
				bp={bp[6:0], 1'b0};
			end
		pp0=pv;
	end
	
endmodule 
