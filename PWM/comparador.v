module comparador(
    input [11:0] amostra,
    input [11:0] cont,
    output reg pwm
    );

always @(*) begin
    if(amostra > cont) pwm = 1;
    else pwm = 0;
end

endmodule
