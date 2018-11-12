[data, fs] = audioread('orig_input.wav');
win = 128 
hop = win/2            

nfft = win 
spectrogram(y,win,hop,nfft,fs,'yaxis')

yt = get(gca,'YTick');  
set(gca,'YTickLabel', sprintf('%.0f|',yt))