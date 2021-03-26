clear
n = [-5: 5];
x1 = (-1).^(n-1);
subplot(2,2,1)
stem(n,x1)
title('x[n]=(-1)pwr(n-1)')
xlabel('n')
ylabel('x[n]')
 
x2 = (-1).^(-n-1);
subplot(2,2,2)
stem(n,x2)
title('x[-n]')
xlabel('n')
ylabel('x[-n]')
 
%even component
ev = (x1+x2)/2;
subplot(2,2,3)
stem(n,ev);
title('even part of x[n]')
xlabel('n')
ylabel('ex[n]')
 
%odd component
od = (x1-x2)/2
subplot(2,2,4)
stem(n,od)
title('odd part of x[n]')
xlabel('n')
ylabel('ox[n]')
 
if(x2 == x1)
    disp('The signal is Even')
elseif(x2 == (-x1))
    disp('The signal is Odd')
else
    disp('The signal is Neither Even or Odd')
end
%end
