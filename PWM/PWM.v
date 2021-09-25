module PWM (
    input clk,
    output saida
);

(*keep=1*) wire [11:0] cont;
(*keep=1*) wire [11:0] amostra;
(*keep=1*) wire [13:0] A;
contador C(clk, cont, A);
amostras Amos(clk, A, amostra);
comparador comp(amostra, cont, saida);

endmodule

