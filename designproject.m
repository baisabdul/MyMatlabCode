fc = 11000;
A = 1.0;

[y, Fs, nbits, opts] = wavread('piano.wav');
t = 0:1/Fs:10;
y = y(1:10*Fs,1);

c = cos(2*pi*fc*t(1:end-1));

data = ( A + y ) .* c';

k=0:1:length(data)-1; 	
f=k*Fs/length(data); % convert it to Hz


figure(1)
Ac = abs(fft(c))/length(c);
plot(f-Fs/2,fftshift(Ac));

subplot(212)
MS = abs(fft(data)) / length(data);
plot(f-Fs/2,fftshift(MS));

%wavplay(data,Fs)


%Filter order
FOrder = 8;
%Cutoff frequency
Fc = 5000;

%Number of point for filter display
l = 512*2;
%Design a low pass butterworth filter with the given cutoff
[bLP,aLP] = butter(FOrder,2*pi*Fc,'low','s');
%Design a digital filter based on the analog prototype
[bbLP,aaLP]=bilinear(bLP,aLP,Fs);              

figure(2)

rec = data .* (data > 0);
rec2 = filter(bbLP,aaLP,rec);
recovered = rec2 - mean(rec2);

figure(2)
subplot(311)
Ay = abs(fft(y))/length(y);
plot(f-Fs/2,fftshift(Ay));
subplot(312)
RS = abs(fft(rec)) / length(rec);
plot(f-Fs/2,fftshift(RS));

subplot(313)
RS2 = abs(fft(recovered)) / length(recovered);
plot(f-Fs/2,fftshift(RS2));


%wavplay(4*recovered,Fs);
