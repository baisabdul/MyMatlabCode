close all
t=-0.002:0.000001:0.002;
tt =[t-2*0.001 t t+2*0.001];
fc = 2000;
m = 5000*abs(t);
%m = 5000*ones(size(t));
mm = [m -1 *m m];
kp = 3*pi/2;

theta = 2*pi*fc*t + kp*m;
x = 2 * cos(theta);




figure(1)
subplot(311), plot(t,m,'LineWidth',2);title('m(t)','FontSize',12);
subplot(312), plot(t,cos(2*pi*fc*t),'LineWidth',2);title('cos(2*pi*fc*t)','FontSize',12);
subplot(313), plot(t,x,'LineWidth',2);title('2cos(2\pi f_c + k_pm(t)','FontSize',12);


kf = 1000;

theta = (2*pi*fc + kf*m).*t;
x = 2 * cos(theta);


figure(2)
subplot(311), plot(t,m,'LineWidth',2);title('m(t)','FontSize',12);
subplot(312), plot(t,cos(2*pi*fc*t),'LineWidth',2);title('cos(2*pi*fc*t)','FontSize',12);
subplot(313), plot(t,x,'LineWidth',2);title('2cos((2\pi f_c + k_fm(t))t','FontSize',12);
