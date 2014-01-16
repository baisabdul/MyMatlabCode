%A lowpass with sample filtering example

%Filter order
FOrder = 8;
%Cutoff frequency
Fc = 5000;
%Sampling frequency
Fs = 44100;
%Number of point for filter display
l = 512*2;

%Design a low pass butterworth filter with the given cutoff
[bLP,aLP] = butter(FOrder,2*pi*Fc,'low','s');
%Design a digital filter based on the analog prototype
[bbLP,aaLP]=bilinear(bLP,aLP,Fs);              
%Display frequency response of the filter
freqz(bbLP, aaLP, l, Fs);
%Restrict axis
axis([0 4000 -60 1]); 


figure(2)
%Two seconds of time.
%Sampling rate is Fs.
t=0:1/Fs:2;

%A dummy signal to demonstrate the effect of filter
x = cos(2*pi*1200*t) + 2*cos(2*pi*200*t);

%The response of the fft function is based on sample number
%These two lines maps the sample number to frequency
k=0:1:length(x)-1; 	
f=k*Fs/length(x); % convert it to Hz

%Compute the frequency spectrum of the signal (x)
Ax=abs(fft(x))/length(x);
%Display the frequency response centered.
subplot(2,1,1);
plot(f-Fs/2,fftshift(Ax));
%Filter the signal x and store the filtered data in y
y = filter(bbLP,aaLP,x);
%Compute the frequency spectrum of signal y
Ay=abs(fft(y))/length(y);
subplot(2,1,2);
%Display the spectrum of y
plot(f-Fs/2,fftshift(Ay));
