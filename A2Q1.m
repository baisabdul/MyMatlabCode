
close all;
%period

c1 = [ 6 0 10 8 4];
f1 = [0 200 400 600 800];
phi1 = [0 0 pi/4 pi/3 pi/2];


d1 = [2 4 5 0 6 0 5 4 2];
f2 = [-800 -600 -400 -200 0 200 400 600 800];
phi2 = [-pi/2 -pi/3 pi/4 0 0 0 pi/4 pi/3 pi/2];



figure(1)
subplot(211);

stem(f1,c1,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('C_k','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on
%ylim([-0.2 2.2])

subplot(212);

stem(f1,phi1,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('\theta_k','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on



figure(2)
subplot(211);

stem(f2,d1,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('|D_k|','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on
%ylim([-0.2 2.2])

subplot(212);

stem(f2,phi2,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('<D_k','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on

