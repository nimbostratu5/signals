clear
n = -10 : 10;
x1 = zeros(1,21);
x1(9:13) = 1;
frqs = 0.1;
w1 = -pi:frqs:pi; 
L1 = length(w1); 
w2 = 0:(2*pi)/62:2*pi;
L2 = length(w2);
X = fft(x1,63); 
magnitude = abs(X);
for j = 1:length(w1)
    sum = 0; 
    for k = 1:length(x1) 
        sum = sum + x1(k) * exp(-1i * w1(j) * n(k));
    end
    arrdtft(j) = sum;
    magn = abs(arrdtft); 
end
subplot(2,2,1); 
stem(n, x1);
xlabel('n');
ylabel('x[n]');
subplot(2,2,2); 
plot(w1, magn);
xlabel('w'); 
ylabel('X(e^j^w)');
title('DTFT w/ Steps of 0.1');
subplot(2,2,3); 
plot(w2, magnitude); 
xlabel('w'); 
ylabel('X(e^j^w)'); 
title('DTFT X = fft(x,63)');
