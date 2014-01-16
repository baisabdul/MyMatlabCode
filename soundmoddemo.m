clear
clc
close all

duration=2;
recObj = audiorecorder;
fprintf('Press any key to start %g seconds of recording… \n', duration); pause
fprintf('\n Recording…');
recordblocking(recObj, 2);
fprintf('\n Finished recording. \n');
file=recObj;
myRecording = getaudiodata(recObj);
fprintf('\n Press any Key to listen to Recording %h.', myRecording); pause
fprintf('\n Playing… \n');
play(recObj); pause

waveFile='Project.wav';
fprintf('\n Press any key to save the sound data to %s…', waveFile); pause
wavwrite(myRecording,'project.wav');
fprintf('\n Saved.. \n');
[y, fs, nbits]=wavread('project.wav'); % find out sampling rate,
N=length(y);

Ac=2;
fc=15e5;
t=linspace(0,length(y)/fs,length(y));

Carrier=Ac*cos(2*pi*fc*t);
carrier=transpose(Carrier);
modulatedvoice=carrier.*y;
demodulatedvoice=carrier.*modulatedvoice;
disp(' Press any Key to Listen to Modulated Voice'); pause
sound(modulatedvoice);
disp(' Press any Key to Listen to Demodulated Voice'); pause
sound(demodulatedvoice);

fprintf('\n Press any Key to Display the Signals. \n'); pause
subplot(4,1,1)
plot(t,myRecording);
xlabel('Time'); ylabel('signal');
title('Original');

subplot(4,1,2)
plot(t,carrier)
xlabel('Time'); ylabel('signal');
title('carrier');

subplot(4,1,3)
plot(t,modulatedvoice)
xlabel('Time'); ylabel(' signal');
title('modulated voice');

subplot(4,1,4)
plot(t,demodulatedvoice)
xlabel('Time'); ylabel('signal');
title('demodulated voice');