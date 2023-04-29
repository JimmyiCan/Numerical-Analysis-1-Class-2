bfunction execution(c)
a = imread('HuskyBW.png'); %To read the picture
s = size(a); %To calculate the size of the picture
af = fftshift(fft2(a)); %To place the image in standard format prior to zeroing out the high frequency components
[x,y] = meshgrid(-s(1)/2:s(1)/2-1, -s(2)/2:s(2)/2-1); %To establish a coordinate system [(xi,yi)]
z = sqrt(x.^2 + y.^2); %To establish a matrix [sqrt(xi.^2 + yi.^2)]
n = z < c; %To create a kernel marrix with elements whose values are all less than that of input c
af1 = af.^n; %This is a convolution, the process by which a picture becomes fuzzy
af1i = ifft2(af1); %To transform the picture in the Fouries expression to the pixel expression
ifftshow(af1i); %To exibit the burred picture
end

