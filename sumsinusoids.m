
f0 = 0;
f1 = 4;
f2 = 8;
f3 = 24;

A0 = 6;
A1 = 8;
A2 = 10;
A3 = 8;

phi0 = 0;
phi1 = 2*pi/3;
phi2 = -1*pi;
phi3 = -1*pi/2;


t = 0:1/1000:1;

x0 = A0*cos(2*pi*f0*t+ phi0);
x1 = A1*cos(2*pi*f1*t+ phi1);
x2 = A2*cos(2*pi*f2*t+ phi2);
x3 = A3*cos(2*pi*f3*t+ phi3);

x = x0 + x1 + x2 + x3;

subplot(511), plot(t, x0, 'LineWidth', 2);
subplot(512), plot(t, x1, 'LineWidth', 2);
subplot(513), plot(t, x2, 'LineWidth', 2);
subplot(514), plot(t, x3, 'LineWidth', 2);
subplot(515), plot(t, x, 'LineWidth', 2);









