%Question 3

f = 0.01:0.001:10;
H = (1 + j * 4 * pi * f) ./ (1 + j * 6 * pi * f);

%Power transfer function
G = H .* conj(H);


figure(1)
subplot(211);
plot(f, abs(H),'LineWidth',2);
title('Magnitude response','FontSize',14);
xlabel('f');
ylabel('|H(f)|','FontSize',14);

subplot(212);
plot(f, angle(H),'LineWidth',2);
xlabel('f');
ylabel('(<H(f))','FontSize',14);
title('Phase response','FontSize',14)



figure(2)
subplot(211);
plot(log10(f), abs(H),'LineWidth',2);
title('Magnitude response','FontSize',14)
xlabel('f-log scale');
ylabel('|H(f)|','FontSize',14);

subplot(212);
plot(log10(f), angle(H),'LineWidth',2);
title('Phase response (<H(f))','FontSize',14)
xlabel('f-log scale');
ylabel('<H(f)','FontSize',14);


figure(3)
plot(log10(f), 10*log10(G),'LineWidth',2);
title('Power transfer function','FontSize',14)
xlabel('f-log scale');
ylabel('10log_{10} (|H|^2)','FontSize',14);



%Question 6
f = 0.01:0.1:10000;
R1 = 7500;
R2 = 15000;
C = 1.0e-7;


H = R2 ./ ((R1 + R2) + j*2*pi*f*R1*R2*C);

figure(4)
subplot(211);
plot(f, abs(H),'LineWidth',2);
title('Magnitude response','FontSize',14);
xlabel('f');
ylabel('|H(f)|','FontSize',14);

subplot(212);
plot(f, angle(H),'LineWidth',2);
xlabel('f(Hz)','FontSize',14);
ylabel('(<H(f))','FontSize',14);
title('Phase response','FontSize',14)



figure(5)
subplot(211);
plot(log10(f), abs(H),'LineWidth',2);
title('Magnitude response','FontSize',14)
xlabel('f(Hz)-log scale','FontSize',14)
ylabel('|H(f)|','FontSize',14);

subplot(212);
plot(log10(f), angle(H),'LineWidth',2);
title('Phase response (<H(f))','FontSize',14)
xlabel('f-log scale','FontSize',14)
ylabel('<H(f)','FontSize',14);




