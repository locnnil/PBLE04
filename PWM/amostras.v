module amostras(
    input clk,
    input [13:0] A,
    output reg [11:0] amostra
);

reg [7:0] mem [0:799];
initial begin
    $readmemb("C:/Users/linco/Desktop/PWM/C.txt",mem);
end
always @(A) begin
    amostra = mem[A];
end

endmodule
