close all;

T0 = pi;
f0 = 1/T0;
w0 = 2*pi*f0;

t = 0:0.0001:pi;
g0 = exp(-t/2);

a0 = 0.504;

N = 100;
n = -N : N;

dn = 0.504  ./ (1 + i * 4 * n);


gt = zeros(size(t));

for k = -N:N
    gt = gt + dn(N+k+1) * exp( i * 2 * k *  t);
end

figure(1)
subplot(211);
plot(t,g0);
subplot(212);
%gt should be real but due to rounding it also has imaginary components of
%very low values
plot(t,real(gt));


figure(2)
subplot(211)
stem(n,abs(dn));
subplot(212)
stem(n,angle(dn));

