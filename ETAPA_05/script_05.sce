x = [1 1 0 0 1 0 1 0 1 0 1 1 0 1 0 0];
fs = 10000000;
bp = 1/(400*8);
ts = 1/fs;
t2 = 0:ts:bp-ts;
m = [];

for (i=1:1:length(x))
if(x(i)==1)
y = 1*cos(2*%pi*10e6*t2);
else
y = 0*cos(2*%pi*10e6*t2);
end
m = [m y];
end

m = m*255;
mbin = dec2bin(m);

PWM = zeros(1,27500000); //check this!!!

for i=1:50000
for cont = 1:550
j = i-1;
aux = cont + 550*j;
if(cont < m(i))
PWM(aux) = 1;
else
PWM(aux) = 0;
end
end
end

fclk = fs*550;
tclk = 1/fclk;
t = 0:tclk:(bp*length(x))-tclk;

V = struct('time',t','values',PWM');
