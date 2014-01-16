close all;
clear 
clc

%Period
T0 = 2*pi;
%Fundamental frequency

f0 = 1/T0;
w0 = 2*pi*f0;

t = -pi:0.0001:pi;
g0 = (t >= -pi/2) & (t <= pi/2) ;

a0 = 0.5;

N = 10;
n = 1:N;

an = (2 ./ (pi* n)) .* sin ( (pi/2) * n);
%all bn values are zero
bn = zeros(size(an)) ;

gt = zeros(size(t));

gt = gt + a0;

for k = 1:N
    gt = gt + an(k) * cos (k * t) + bn(k) * sin (k * t); %the sin part is not required as all values of bn are zeros
end

figure(1)
subplot(211);
plot(t,g0);
subplot(212);
plot(t,gt);

%Convert to compact form
cn = sqrt ( an .* an + bn .* bn);
%angle
tn = atan2(-1 * bn, an);
%Add the zero frequency component
cn = [a0 cn];
tn = [0 tn];
n = [0 n];


figure(2)
subplot(211)
stem(n,cn);
subplot(212)
stem(n,tn);
