close all
t=-0.002:0.000001:0.002;
tt =[t-4*0.001 t t+4*0.001];
%tt =[t t t];
fc = 2000;
m = 5000*abs(t);
%m = 5000*ones(size(t));
mm = [m m m];
kp = 3*pi/2;

theta = 2*pi*fc*tt + kp*mm;
x = 2 * cos(theta);




figure(1)
subplot(311), plot(tt,mm,'LineWidth',2);title('m(t)','FontSize',12);
subplot(312), plot(tt,cos(2*pi*fc*tt),'LineWidth',2);title('cos(2*pi*fc*t)','FontSize',12);
subplot(313), plot(tt,x,'LineWidth',2);title('2cos(2\pi f_c + k_pm(t))','FontSize',12);


kf = 2*pi*30;

theta = (2*pi*fc + kf*mm).*tt;
x = 2 * cos(theta);


figure(2)
subplot(311), plot(tt,mm,'LineWidth',2);title('m(t)','FontSize',12);
subplot(312), plot(tt,cos(2*pi*fc*tt),'LineWidth',2);title('cos(2*pi*fc*t)','FontSize',12);
subplot(313), plot(tt,x,'LineWidth',2);title('2cos((2\pi f_c + k_fm(t))t','FontSize',12);
