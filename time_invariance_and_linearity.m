clear
%Linearity
%i)
%defining out input signals and scaling factors
%these variables are needed to verify superposition
x1=1;
x2=2;
alpha=5;
beta=2;
y1= ( (alpha.*x1) + (beta.*x2)  ).^2;
y2= (alpha.*(x1.^2)) + (beta.*(x2.^2));
 
if(y1==y2)
    %superposition is true
    disp('the system y[n] = (x[n])^2 is linear')
else
    disp('the system y[n] = (x[n])^2 is not linear')
end
 
%Time-Invariance
n=[1,10];
%cannot use x[n]=1 because it's the same everywhere
x11=dirac(n);
y11=((x11).^2);
%shifting by 2
for i=3:(n+2)
 shiftedX(i)=x11(i-2);
 shiftedY(i)=y11(i-2);
end
y22 = (shiftedX).^2;
%tf = isequal(y22,shiftedY)
if(shiftedY==y22)
    %time-invariance is true
    disp('the system y[n] = (x[n])^2 is time invariant')
else
    disp('the system y[n] = (x[n])^2 is not time invariant')
end
 
 
%ii)

%Linearity
n2=[1,10];
y3= (2.*(alpha.*x1)+(beta.*x2)) + 5*dirac(n2);
y4= (alpha.*(2.*(alpha.*x1)+ 5*dirac(n2))) + (beta.*(2.*(beta.*x2)+ 5*dirac(n2)));
 
if(y3==y4)
     %superposition is true
    disp('the system y[n] = 2x[n] + 5dirac[n] is linear')
else
    disp('the system y[n] = 2x[n] + 5dirac[n] is not linear')
end

%Time Invariance
 
x=n;
yf = (2.*(x)) + 5.*dirac(n);
xd=n-1;
yf2= (2.*(xd)) + 5.*dirac(n);
yfd = (2.*(x(n))) + 5.*dirac(n);
 
tf= isequal(yf2,yfd)
if(tf==1)
 disp('the system y[n] = 2x[n] + 5dirac[n] is time invariant')
 else
 disp(' the system y[n] = 2x[n] + 5dirac[n] is not time invariant')
end
