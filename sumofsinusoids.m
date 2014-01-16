
omega = 2*pi*2;
t = -2:0.001:2;

A1 = 5;
phi1 = pi/4;

A2 = 10;
phi2 = -pi/4;

w1 = A1 * cos (omega*t + phi1);
w2 = A2 * cos (omega*t + phi2);

w = w1 + w2;

subplot(411);
plot(t,w1);

subplot(412);
plot(t,w2);

subplot(413);
plot(t,w);
ylim([-15 15]);


alpha = A1 * cos(phi1) + A2 * cos(phi2);
beta = A1 * sin(phi1) + A2 * sin(phi2);

A = sqrt(alpha * alpha + beta*beta);
phi = atan2(beta, alpha);


wp = A * cos (omega * t + phi);
subplot(414);
plot(t, wp);
ylim([-15 15]);




