clear
n= [0:10];
x = zeros(1, length(n));
x(2) = 1;
x(3) = 1;
x(4) = 1;
subplot(2,2,1)
stem(n,x);
title('input signal x[n]')
xlabel('n')
ylabel('x[n]')
 
n1 = [0:9];
%need to define for y(1) since subscript cannot be 0 inside forloop.
%y(0) = 0 by default
y(1) = 0;

%using for loop to compute difference eq. 

for m=2:10;
    y(m) = x(m) + (0.25)* y(m-1);
end

subplot(2,2,2)
stem(n1,y);
title('response y[n]')
xlabel('n')
ylabel('response')

%here it's -2 because we already took into consideration y(1)=0
%otherwise it's -1
length = [0: ( length(n)+length(n1) -2 ) ];
g=conv(x,y);

subplot(2,2,3)
stem(length,g);
title('convolution of response and input')
xlabel('n')
ylabel('conv')
 
%end
