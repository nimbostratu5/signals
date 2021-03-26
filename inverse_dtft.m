clear
n = -10:10;
x1 = zeros(1,21);
x1(9:13) = 1; 
w = 0:(2*pi)/62:2*pi;
X = fft(x1, 63);
magnitude = abs(X);
Y = ifft(X, 63);
n2 = -30:32;
subplot(2,2,1); 
stem(n, x1);
xlabel('n'); 
ylabel('x[n]');
title('x[n]')
subplot(2,2,2);
plot(w, magnitude); 
xlabel('w');
ylabel('X(e^j^w)'); 
title('DTFT: X = fft(x,63)');
xlim manual
hold on 
subplot(2,2,3);
stem(n2, Y);
axis([-30,-10,0,1])
xlabel('n'); 
ylabel('x[n]'); 
title('Restore x[n](ifft)');