x = [1 0];
bp = 1/(400*8);
bit = [];

for (n=1:1:length(x))
    if(x(n)==1)
        se = ones(1,1000);
    else x(n)==0
        se = zeros(1,1000);
    end
    bit = [bit se];
end


t1 = 0:bp/1000:(bp*length(x))-bp/1000;
plot(t1,bit)


t2 = 0:bp/100000:bp - bp/100000;
m = [];

for (i=1:1:length(x))
    if(x(i)==1)
        y = 1*cos(2*%pi*9e6*t2);
    else
        y = 0*cos(2*%pi*11e6*t2);
    end
    m = [m y];
end

t3 = 0:bp/(100000):(bp*length(x))-bp/100000;
plot(t3,m)


N = length(m);
Amp = (2*abs(fft(m))/N);
f = 0:1/(bp*length(x)):(N-1)*1/(bp*length(x));
plot2d3(f,Amp);


fs = 13e7;
ts = 1/fs;
t2 = 0:ts:bp-ts;
m = [];
for(i=1:1:length(x))
    if(x(i)==1)
        y = 1*cos(2*%pi*9e6*t2);
    else
        y = 1*cos(2*%pi*11e6*t2);
    end
m = [m y];
end

m = m + 1;
m = m*(255/2);
m = round(m);

t3 = 0:ts:(bp*length(x))
plot(t3,m)

for i=1:81250
    for cont = 1:550
        j = i-1;
        aux = cont + 550*j;
        if(cont < m(i))
            PWM(aux)=1;
        else
            PWM(aux)=0;
        end
    end
end

fclk = fs*550;
tclk = 1/fclk;
t = 0:tclk:(bp*length(x))-tclk;

PWM = PWM';
v = struct('time',t','values',PWM')











 
    
    



