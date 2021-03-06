close all;
clear
clc

T0 = pi;
f0 = 1/T0;
w0 = 2*pi*f0;

t = -pi/2:0.0001:pi/2;


a0 = 1/T0;

N = 10;
n = 1:N;

an = (2 / T0) * ones(size(n)) ;
%all bn values are zero
bn = zeros(size(n)) ;

gt = zeros(size(t));

gt = gt + a0;

for k = 1:N
    gt = gt + an(k) * cos (2 * pi * k * f0 *  t) + bn(k) * sin (2 * pi * k * f0 *  t); %the sin part is not required as all values of bn are zeros
end

figure(1)
plot(t,gt);


cn = sqrt ( an .* an + bn .* bn);
tn = atan2(-1 * bn, an);
cn = [a0 cn];
tn = [0 tn];
n = [0 n];


figure(2)
stem(n,cn);

figure(3)
subplot(211)
stem(n,[a0 an]);
subplot(212)
stem(n,tn);