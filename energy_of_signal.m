clear
%plotting x[n]
n = 0:9;
x = n;
subplot(2,2,1)
stem(n, x)
xlabel('n')
ylabel('x[n]=n')
title('Part 1 - Question 1 a)')
%plotting y[n]
y = x.^2;
subplot(2,2,2)
stem(x, y)
xlabel('n')
ylabel('y[n] = x^2[n]')
title('noor alali')
%plotting energy of x[n]
e1 = sum(x.^2);
word1 = ['Total energy for x[n]= n is : '];
word2 = ['Total energy for y[n]= x^2[n] is : '];
disp (word1)
disp (e1)
e2 = sum(y.^2);
disp (word2)
disp (e2)

%plotting x2[n]
x2 = sin( (2*pi)/10 * n);
subplot(2,2,3)
stem(n, x2)
xlabel('n')
ylabel('x2[n]=sin( (2*pi)/10 * n)')
%plotting y2[n]
y2 = x2.^2;
subplot(2,2,4)
stem(x2, y2)
xlabel('n')
ylabel('y2[n] = x^2[n]')
title('noor alali')
%plotting energy of x2[n]
e3 = sum(x2.^2);
word3 = ['Total energy for x2[n]= sin( (2*pi)/10 * n) is : '];
word4 = ['Total energy for y2[n]= x2^2[n] is : '];
disp (word3)
disp (e3)
e4 = sum(y2.^2);
disp (word4)
disp (e4)
