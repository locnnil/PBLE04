module Contador(
input clk,
output reg[11:0] cont,
output reg[15:0] A);

initial cont =12'd0;
initial A = 16'd0;

always @(posedge clk)begin
	cont <= cont + 12'd1;
	if(cont >= 12'd549)begin
		cont <=12'd0;
		A <= A + 16'd1;
		if(A==16'd499999)begin
			A<= 16'd0;
		end
	end
end
endmodule