function f = Fourier(t,n)
f = 1 - 1/exp(1);
for i = 1:n
    bi = int(i);
    term = bi*cos(i*pi*t);
    f = f + term;
end