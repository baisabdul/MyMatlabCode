%If scaled and shifted sinusoids of the same frequency are added together
%the result is another sinusoid of the same frequency.


f = 2;
phi = 0;
t = -1:1/(200*f):1;
x1 = 4 * cos(2*pi*f*t + phi);

plot(t,x1,'r','LineWidth',2);
xlabel('t (sec)','FontSize',14);
ylabel('x(t)','FontSize',14);
title('x(t) = Acos(2\pift + \phi)','FontSize',14);
set(gca,'FontSize',14,'LineWidth',2);
ylim([-5 5]);
grid on





