function coefficient = int(n)
    func1 = @(t) (exp(t)) .* cos(n*pi*t);
    func2 = @(t) (exp(-t)) .* cos(n*pi*t);
    coefficient = integral(func1,-1,0) + integral(func2,0,1);
    return
end
