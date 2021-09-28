module PWM (
    input clk,
    output saida
);

(*keep=1*) wire [11:0] count;
(*keep=1*) wire [11:0] amostra;
(*keep=1*) wire [13:0] A;
count counter(clk, count, A);
memory_pcm amostras(clk, A, amostra);
comp comparador(amostra, count, saida);

endmodule
