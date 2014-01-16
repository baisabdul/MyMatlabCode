
close all;
%period

m = [ 0 4 8 6 0 0 6 0 0 6 8 4 0 ];
ph = [ 0 3 0 -1 2 0 0 0 -2 1  0 -3 0 ];
f = 100*[-6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6];


figure(1)
subplot(211);

stem(f,m,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('|Dn|','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on
subplot(212);
stem(f,ph,'LineWidth',2);
xlabel('f (Hz)','FontSize',14);
ylabel('<Dn','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on



