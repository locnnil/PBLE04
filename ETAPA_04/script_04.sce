x = [1 1 0 0 1 0 1 0 1 0 1 1 0 1 0 0 ];
bp = 1/(400*8);
bit = [];

for n=1:1:length(x)
    if x(n) == 1;
        se = ones(1,1000);
    else
        se = zeros(1,1000);
    end
    bit = [bit se];
end

t1 = 0:bp/1000:(bp*length(x))-bp/1000;
plot2d(t1,bit),xlabel('TEMPO[s]'),ylabel('NÍVEL LÓGICO')



t2 = 0:bp/100000:bp - bp/100000;
m = [];
for (i=1:1:length(x))
    if(x(i)==1)
        y=1*cos(2*%pi*10e6*t2);
    else
        y=0*cos(2*%pi*10e6*t2);
    end
    m = [m y];
end

t3 = 0:bp/(100000):(bp*length(x))-bp/100000;
plot2d(t3,m); 

