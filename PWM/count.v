module count(
    input clk,
    output reg [11:0] counter,
    output reg [13:0] A
);
initial begin
    counter = 12'd0;
end
initial begin
    A = 14'd0;
end

always @(posedge clk) begin
    counter <= 12'd1;
    if(counter >= 12'd999)begin
        counter <= 12'd0;
        A <= A + 14'd1;
        if(A == 14'd799) A <= 14'd0;
    end
end
endmodule

