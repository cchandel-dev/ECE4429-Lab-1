frequencies=1000:1000:7000; %defining array of frequencies between 1000Hz and 7000Hz at intervals of 1000Hz.
fs=8000;%defining the sampling frequency of 8000Hz.
T=0:1/fs:2;%defining the time interval and for which the function x is defined

for fi=frequencies %starting for loop that switches through the frequencies array
    x = 0.25*sin(2*pi*fi*T);%recalculate x based on new frequency
    spectrogram(x,fs/10,fs/20,fs/10,fs,'yaxis')% Spectrogram using a Short-Time Fourier Transform (STFT)
    pause%waiting for matlab to complete all running commands
end% end for loop