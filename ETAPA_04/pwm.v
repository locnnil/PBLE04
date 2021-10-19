module pwm(
input clock,
output saida);

	(*keep=1*) wire[11:0] cont;
	(*keep=1*) wire[11:0] amostra;
	(*keep=1*) wire[15:0] A;

	Contador C (
	.clk(clock),
	.cont(cont),
	.A(A));
	
	Amostras Amos(
	.clk(clock),
	.A(A),
	.amostra(amostra));
	
	comparador comp(
	.amostra(amostra),
	.cont(cont),
	.pwm(saida));
	
endmodule 
