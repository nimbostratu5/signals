clear
n = -10 : 10;
x1 = zeros(1,21);
x1(9:13) = 1;
step = 0.1;
w = -pi:step:pi;
for j = 1:length(w)
    sum = 0; 
    for k = 1:length(x1) 
        sum = sum + x1(k) * exp(-1i * w(j) * n(k)); 
    end
    arr(j) = sum; 
    magnitude = abs(arr); 
end
subplot(2,1,1); 
stem(n, x1);
xlabel('n'); 
ylabel('x[n]');
title('Original DT signal');
hold on
subplot(2,1,2);
plot(w, magnitude); 
xlabel('w');
ylabel('X(e^j^w)')
title('DTFT of x[n]')