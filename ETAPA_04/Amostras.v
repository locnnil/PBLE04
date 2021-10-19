module Amostras(
input clk,
input [15:0] A,
output reg [11:0] amostra);

reg [7:0] mem [0:49999];
initial begin
	$readmemb("D:/Google_Drive/faculdade/2021.2/PBLE04/FPGA/C.txt",mem);
end

always @(A) begin
	amostra = mem[A];
end
endmodule