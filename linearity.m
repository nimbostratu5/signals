clear
n=[0:10];
x1= sin( (2*pi)/10 * n);
y1=x1.*2;
x2=cos((2*pi)/10*n);
y2=x2.*2;
x3=x1+x2;
y3=x3.*2;
y4=y1+y2;
 
subplot(2,2,1);
stem(n,x1);
hold on;
stem(n,y1);
hold off;
title('blue: x1=sin(2pi/10*n) & red: y1=2*x')
 
subplot(2,2,2);
stem(n,x2);
hold on;
stem(n,y2);
hold off;
title('blue: x2=cos(2pi/10*n) & red: y2=2*x2')
 
subplot(2,2,3);
stem(n,x3);
hold on;
stem(n,y3);
hold off;
title('blue: x3=x1+x2 & red: y3=2*x3')
 
subplot(2,2,4);
stem(n,y4);
title('y4=y1+y2');
%additivity
if(y3==y4)
    conditionA = 1;
else
    disp('the system is not linear')
end
%scaling
scaler=2;
y5= (scaler.*x1).*2;
y6= scaler.*((x1.*2));
if(y5==y6)
    conditionB = 1;
else
    disp('the system is not linear')
end
 
if((conditionA == 1) && (conditionB == 1))
disp('system is linear')
end
