
close all;
%period
T0 = pi;
%fundamental frequency
f0 = 1/T0;
w0 = 2*pi*f0;

%Time 
%Change the start and end value to test for other values of t
t = 0:0.0001:pi;

%Original signal
g0 = exp(-t/2);

%Constant component
a0 = 0.504;

%Number of components
%Change this value to test for using more components
N = 10;
n = 1:N;

%Coefficient of the cosine component
an = (0.504 * 2) ./ (1 + 16 * n .* n);
%Coefficient of the sine component
bn = (0.504 * 8 * n) ./ (1 + 16 * n .* n);


%All components of the computed signal are initialized to zero
gt = zeros(size(t));

%Add the DC component
gt = gt + a0;

%Add the other components
for k = 1:N
    gt = gt + an(k) * cos (2 * k * t) + bn(k) * sin (2* k * t);
end

%Plot the original signal and the one constructed from the sinusoidal
%components
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
