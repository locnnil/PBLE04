fm = 20;
fs = 40*fm;
ts = 1/fs;
t = 0:ts:(1-ts);
m = 3*cos(20*%pi*t) + 2*cos(40*%pi*t + (%pi/6));
plot2d2(t,m);
n = 8;
L = 2^n;
mmax = max(abs(m));
mq = m/mmax;
cod = mq;
d = 2/L;
q = d*[0:L-1];
q = q -((L-1)/2)*d;
for i = 1:L
    mq(find(((q(i)-d/2)<=mq)&(mq<=(q(i)+d/2))))= q(i).*ones(1,length(find(((q(i)-d/2)<=mq)&(mq<=(q(i)+d/2)))));
    cod(find(mq==q(i)))=(i-1).*ones(1,length(find(mq==q(i))));
end

mq = mq*mmax;
plot2d2(t,mq);

c = zeros(length(m),n);
for i = 1:length(m)
    for j = n:-1:0
        if(fix(cod(i)/(2^j))==1)
            c(i,(n-j)) = 1;
            cod(i) = cod(i)-2^j;
        end
    end
end

