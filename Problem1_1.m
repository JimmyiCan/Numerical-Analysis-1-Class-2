[y,Fs] = audioread('twinkle.wav');
n = length(y);
t = (0:n-1)/Fs;
p = abs(fft(y));
f = (0:n-1)*(Fs/n);
plot(f,p);
%y-f