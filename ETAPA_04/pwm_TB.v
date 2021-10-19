`timescale 1ns/10ps

module pwm_TB;
reg clock;
reg [11:0] cont;
reg [11:0] amostra;
reg [15:0] A;
wire saida;

pwm DUT(
.clk(clock),
.saida(saida) );

initial begin
	clock = 0;
end

always begin
	#0.091 clock =~clock;
end

initial begin
$init_signal_spy("/pwm_TB/DUT/cont","cont",1);
$init_signal_spy("/pwm_TB/DUT/amostra","amostra",1);
$init_signal_spy("/pwm_TB/DUT/A","A",1);
end

initial
	#550000 $stop;


endmodule
