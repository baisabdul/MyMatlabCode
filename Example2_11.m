close all;

T0 = 2*pi;
f0 = 1/T0;
w0 = 2*pi*f0;

t = -pi:0.0001:pi;
g0 = (t >= -pi/2) & (t <= pi/2) ;

N = 10;
n = -1*N : N;

dn = (1  ./ (n * pi)) .* sin (pi * n / 2);

%at n = 0, dn is computed as NaN but it should be 0.5
%as (1/npi) sin(npi/2) = (1/2)(sin(npi/2) / (npi/2)) = 1/2 when n = 0
%(sin t) / t = 1 when t -> 0
dn(N+1) = 0.5;
gt = zeros(size(t));

for k = -N:N    
    gt = gt + dn(N+k+1) * exp( i *  k *  t);
end

figure(1)
subplot(211);
plot(t,g0);
subplot(212);
plot(t,real(gt));


figure(2)
subplot(211)
stem(n,abs(dn));
subplot(212)
stem(n,angle(dn));

