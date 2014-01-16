
close all;
%period

m1 = [ 0 0 0 1 1 1 1 1 1 1 1 1 0 0  0 ];
f1 = [-10 -5 -4 -4 -3 -2 -1 0 1 2 3 4 4 5 10];


m2 = [ 0   0  0 0 1 1 1 1 1 1 1 0  0 ];
f2 = [-10 -5 -4 0 0 1 2 3 4 5 8 8 10];


figure(1)
subplot(211);

plot(f1,m1,'LineWidth',2);
xlabel('t (sec)','FontSize',14);
ylabel('x_1(t)','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on
ylim([-0.2 2.2])

subplot(212);

plot(f2,2* m2,'LineWidth',2);
xlabel('t (sec)','FontSize',14);
ylabel('x_2(t)','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on
ylim([-0.2 2.2])

