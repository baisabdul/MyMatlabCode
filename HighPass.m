%Design a highpass filter
%The filter coefficients (digital) are in in bbHP and aaHP

FOrder = 2;
Fs = 8000;
l = 512;
R = 1;
Wp = 2* pi * 1500;
[bHP,aHP] = cheby1(FOrder*2,R,Wp, 'high','s');
[bbHP,aaHP]=bilinear(bHP,aHP,Fs);              
freqz(bbHP, aaHP, l, Fs);
axis([0 4000 -40 1]); 