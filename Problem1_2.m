for i = 1:11
    Fs = 8000;
    samples = [i*Fs,(i+1)*Fs];
    [y,Fs] = audioread('twinkle.wav',samples);
    n = length(y);
    t = (0:n-1)/Fs;
    p = abs(fft(y));
    f = (0:n-1)*(Fs/n);
    subplot(5,3,i)
    plot(f,p)
    axis([0 600 0 2000])
end
