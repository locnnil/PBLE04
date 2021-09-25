module comp (
    input [11:0] amostra,
    input [11:0] counter,
    output reg pwm
    );

always @(*) begin
    if(amostra > counter) pwm = 1
    else pwm = 0;
end

endmodule

