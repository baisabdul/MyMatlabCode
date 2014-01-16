close all
t=-0.1:0.00001:0.1;
fm = 10;
fc=100;
m = cos(2*pi*fm*t);
c = cos(2*pi*fc*t);
s = m .* c;


figure(1)
subplot(311), plot(t,m,'LineWidth',2);title('m(t)','FontSize',12);
ylim([-1.2 1.2]);
subplot(312), plot(t,s,'LineWidth',2);
%title('cos(w_c t)','FontSize',12);
ylim([-1.2 1.2]);
subplot(313), plot(t,s.*c,'LineWidth',2);title('m(t)cos(w_c t)','FontSize',12);
%hold on
%subplot(313), plot(t,abs(m),'r','LineWidth',2);
%subplot(313), plot(t,m,'g-','LineWidth',2);

ylim([-1.2 1.2]);


A = 2;
figure(3);
subplot(311), plot(t,m,'LineWidth',2);
ylim([-4 4])
subplot(312), plot(t, A + m,'LineWidth',2);
ylim([-4 4])
hold on
subplot(313),
plot(t,(A+m) .* c,'g','LineWidth',2);
ylim([-4 4])
hold on
plot(t,(A+m),'r','LineWidth',2);








