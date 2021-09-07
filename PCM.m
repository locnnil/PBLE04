clc
clear vars
close all


% Composição do vetor para o sinal de entrada
%para simular um sinal continuo no tempo:
fo = 1e5;
To = 1/fo;
to = 0:To:1;
% Equação do sinal de entrada:
sinal = 3.*cos(20*pi*to) + 2.*cos(40*pi*to + (pi/6)) ;

% Número de bits por amostra
b = 8;

N = size(sinal);
N = N(2);

% criação do vetor para armazenar os valores do sinal quantizado
SinalQuantizado = zeros(1,N);
% Faixa do sinal que será quantizado:
dy = 2*A/(2^b);
Vlow = -A;
Vhigh = A;

% Estabelicimento de em quais situações haverá a mudança
%de nivel na quantização ou quando será mantido o nível.

for i=Vlow:dy:Vhigh
    for k = 1:N
        if(((i-dy/2)<sinal(k))&&(sinal(k)<(i+dy/2)))
            SinalQuantizado(k)=i;
        end
    end
end
for i=Vlow:dy:Vhigh
    for k = 2:N
        if(SinalQuantizado(k)==0)
            if(SinalQuantizado(k-1) ~= (0 - dy))
                if(SinalQuantizado(k-1) ~= (0+dy))
                    SinalQuantizado(k) = SinalQuantizado(k-1);
                end
            end
        end
    end
end


%plot dos sinais de entrada correspondente á mensagem,
%os pulsos e o sinal amostrado
figure(1)
subplot(2,1,1)
plot(to, sinal, 'k');
title('sinal mensagem')
xlabel('time [s]')
ylabel('Amplitude [v]')
ylim([-11 11])
grid on
subplot(2,1,2)
stairs(to, SinalQuantizado, 'r')
xlim([0 1])
ylim([-11 11])
title('Sinal Quantizado')
xlabel('time [s]')
ylabel('Amplitude [v]')
grid on
hold on
plot(to, sinal, 'g--')









