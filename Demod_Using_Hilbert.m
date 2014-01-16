load('EncodedAudioSignal.mat');
data =transpose(data);
t = linspace(0,length(data)/fs,length(data)); 

mh = hilbert(data);
recovered = abs(mh);
recovered = recovered - mean(recovered);
wavplay(4*recovered, fs);

