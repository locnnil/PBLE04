`timescale 1ns/10ps

module PWM_TB;
reg clock;
reg [11:0] count;
reg [11:0] amostra;
reg [13:0] A;
wire saida;

PWM DUT(
    .clk(clock),
    .saida(saida)
);

initial begin
    clock = 0;
end

always begin
    #625 clock = ~clock;
end

initial begin
    $init_signal_spy("/PWM_TB/DUT/count","count",1);
    $init_signal_spy("/PWM_TB/DUT/amostra","amostra",1);
    $init_signal_spy("/PWM_TB/DUT/A","A",1);
end

initial begin
    #1005000000 $stop;
end


endmodule




