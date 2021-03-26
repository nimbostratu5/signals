clear
n = [0: 10];
x1 = exp((-2)*(abs(n))) .* sin((2*pi/36)*n);
subplot(2,2,1)
stem(n,x1)
title('x[n]= exp(-2*|n|) * sin( (2*pi/36)*n)')
xlabel('n')
ylabel('x[n]')
 
x2 = exp((-2)*(abs(-n))) .* sin((2*pi/36)*(-n));
subplot(2,2,2)
stem(n,x2)
title('x[-n]')
xlabel('n')
ylabel('x[-n]')
 
%even component
ev = (x1+x2)/2;
subplot(2,2,3)
stem(n,ev);
title('even part')
xlabel('n')
ylabel('xe[n]')
 
%odd component
od = (x1-x2)/2
subplot(2,2,4)
stem(n,od)
title('odd part')
xlabel('n')
ylabel('xo[n]')
 
if(x2 == x1)
    disp('The signal is Even')
elseif(x2 == (-x1))
    disp('The signal is Odd')
else
    disp('The signal is Neither Even or Odd')
end
%end
