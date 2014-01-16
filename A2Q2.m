
close all;
%period

c1 = [ 2 4 3 4];
f1 = [0 20 30 60];
phi1 = [0 -pi/5 -pi/2 -pi/3];


d1 = [2 1.5 2 2 2 1.5 2];
f2 = [-60 -30 -20 0 20 30 60];
phi2 = [pi/3 pi/2 pi/5 0 -pi/5 -pi/2 -pi/3];



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




c2 = [2 4 10 3 4];
f3 = [0 20 25 30 60];
phi3 = [0 -pi/5 -pi/6 -pi/2 -pi/3];


d2 = [2 1.5 5 2 2 2 5 1.5 2];
f4 = [-60 -30 -25 -20 0 20 25 30 60];
phi4 = [pi/3 pi/2 pi/6 pi/5 0 -pi/5 -pi/6 -pi/2 -pi/3];



figure(3)
subplot(211);

stem(f3,c2,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('C_k','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on
%ylim([-0.2 2.2])

subplot(212);

stem(f3,phi3,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('\theta_k','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on



figure(4)
subplot(211);

stem(f4,d2,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('|D_k|','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on
%ylim([-0.2 2.2])

subplot(212);

stem(f4,phi4,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('<D_k','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on

