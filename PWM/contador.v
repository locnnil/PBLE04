module contador(
    input clk,
    output reg [11:0] cont,
    output reg [13:0] A
);
initial cont = 12'd0;
initial A = 14'd0;

always @(posedge clk) begin
    cont <= cont + 12'd1;
    if(cont >= 12'd999)begin
        cont <= 12'd0;
        A <= A + 14'd1;
        if(A == 14'd799) A <= 14'd0;
    end
end
endmodule

