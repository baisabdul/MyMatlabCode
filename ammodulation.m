close all
%Time
t=-0.3:0.00001:0.3;
%Frequency of the baseband signal
fm = 3;
%Carrier frequency
fc=100;
%Baseband signal
m = cos(2*pi*fm*t);
%Carrier signal
c = cos(2*pi*fc*t);
%Amplitude modulation DSB-SC
s = m .* c;


figure(1)
subplot(311), plot(t,m,'LineWidth',2);title('m(t)','FontSize',12);
ylim([-1.2 1.2]);
subplot(312), plot(t,c,'LineWidth',2);title('cos(w_c t)','FontSize',12);
ylim([-1.2 1.2]);
subplot(313), plot(t,s,'LineWidth',2);title('m(t)cos(w_c t)','FontSize',12);
hold on
subplot(313), plot(t,abs(m),'r','LineWidth',2);
subplot(313), plot(t,m,'g-','LineWidth',2);

ylim([-1.2 1.2]);

figure(2);
subplot(211), plot(t,t,'LineWidth',2);

subplot(212), plot(t,c .* t,'LineWidth',2);hold on
subplot(212), plot(t,abs(t),'r','LineWidth',2);

A = 1.3;

figure(3);
subplot(311), plot(t,m,'LineWidth',2);
ylim([-2.5 2.5])
subplot(312), plot(t,c .*  + m,'LineWidth',2);
hold on
plot(t,abs(m),'g','LineWidth',2);
plot(t,m,'y');
ylim([-2.5 2.5])
subplot(313), plot(t,c .* (A + m),'LineWidth',2);
ylim([-2.5 2.5])
hold on
plot(t,A+m,'r','LineWidth',2);





