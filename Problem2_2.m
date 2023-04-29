n = 2:5:17;
err = zeros(1,length(n));
for n = 2:5:17
    t1 = -1:1e-4:0;
    y1 = exp(t1);
    t2 = 0:1e-4:1;
    y2 = exp(-t2);
    t = [t1 t2];
    y = [y1 y2];
    y3 = Fourier(t,n);
    i = 1 + (n-2)/5;
    err(i) = sqrt((1/length(t))*sum((y - y3).^2));
end
n = 2:5:17;
disp(err)
scatter(n,err,140,'filled','red')
xlabel('M')
ylabel('Error')