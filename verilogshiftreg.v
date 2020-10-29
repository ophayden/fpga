module shiftreg(
input shift_in,
input clk,
output shift_out
);
reg [7:0] bits;

assign shift_out=bits[7];

always@(posedge clk)begin
	bits <=bits <<1;
	bits[0] <=shift_in;
end
