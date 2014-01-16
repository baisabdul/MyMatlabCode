f = 0.5;
phi = 0;
t = -2:1/(20*f):2;
x1 = cos(2*pi*f*t + phi);

phi1 = -pi/2;
phi2 = pi;

x2 = cos(2*pi*f*t + phi1);
x3 = cos(2*pi*f*t + phi2);

subplot(311);
plot(t,x1,'r');

subplot(312);
plot(t,x2,'m');
subplot(313);
plot(t,x3,'b');



x4 = sin(2*pi*f*t );
x5 = -1*cos(2*pi*f*t);



subplot(312);
hold on
plot(t,x4,'g');
subplot(313);
hold on
plot(t,x5,'g');








