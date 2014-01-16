%Design a highpass filter
%The filter coefficients (digital) are in in bbBP and aaBP

%Change the order of the filter to how the rolloff is changing
FOrder = 2;
Fc = 800;
Fs = 8000;
l = 512;

%The passband of the filter
Wn = 2*pi*[1000 1400];
[bBP,aBP] = butter(FOrder,Wn,'bandpass','s');
[bbBP,aaBP]=bilinear(bBP,aBP,Fs);              
%Display the filter response
freqz(bbBP, aaBP, l, Fs);
axis([0 4000 -40 1]); 
