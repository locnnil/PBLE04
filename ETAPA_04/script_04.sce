
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
plot(t1,bit)

