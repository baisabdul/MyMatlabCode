%These are just sample commands and don't directly correspond to anything
%in the project

%I just thought that might find SOME of them useful. You don't have to use
%these commands and can come with YOUR own design.



%Read a wavfile
%fs is the sampling frequenc
%nbits represent the number of bits to store one sample
%opts stores information about the data...like the number of channels
[y, fs, nbits, opts] = wavread('loop.wav');

%y has two channels

%play both channels
%sound(y,fs)
%play left channel
%sound(y(:,1),fs)
%play right channel
%sound(y(:,2),fs)


%This sample data contains around 7 seconds. If we want to store the first
%first 5 seconds, we can do it as
%Here we also discard one of the channels
y = y(1:5*fs,1);
t = 0:1/fs:5;
%Generate a carrier + dc
fc = 8000;
c = cos(2*pi*fc*t(1:end-1)) + 1;

%frequency in Hz
k=0:1:length(y)-1; 	
f=k*fs/length(y); % convert it to Hz


figure(1)
subplot(211)
Ay = abs(fft(y))/length(y);
plot(f,fftshift(Ay));


subplot(212)
%plot the spectrum of the carrier
Ac = abs(fft(c)) / length(c);
plot(f,fftshift(Ac));

%play the carrier + dc
wavplay(c,fs)

%play the carrier + dc
wavplay(c-1,fs)

