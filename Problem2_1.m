for n = 2:5:17
    t1 = -1:1e-4:0;
    y1 = 1 - 2./(1+t1);
    t2 = 0:1e-4:1;
    y2 = exp(-t2);
    t = [t1 t2];
    y = [y1 y2];
    plot(t,y,'blue')
    legend('O')
    hold on
    y3 = Fourier(t,n);
    plot(t,y3)
    title('Fourier series for different M')
    legend('The original function','M = 2','M = 7','M = 12','M = 17')
end
hold off
