
close all;
%period

n = -7:7;
d = sinc(n/2);
d = 0.5 * d .* d;

figure(1)
stem(n,d,'LineWidth',2);
xlabel('n (\times f_0)','FontSize',14);
ylabel('D_k','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
grid on
ylim([0 0.51])


