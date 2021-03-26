clear
x1=(n.^2);
x2=n;
 
subplot(2,2,1)
stem(x1);
title('input 1 signal x1[n]=n.^2')
xlabel('n')
ylabel('x1[n]')
 
subplot(2,2,2)
stem(x2);
title('input 2 signal x2[n]=n')
xlabel('n')
ylabel('x2[n]')
 
% Linearity:
% T{a*x1[n] + b*x2[n]} = a*T{x1[n]} + b*T{x2[n]}
%           LHS        =          RHS
 
alpha = 2;
beta =3;
 
LHS = Sys1(((alpha.*x1) + (beta.*x2)));
RHS = ((alpha).*(Sys1(x1)))    +    ((beta).*(Sys1(x2)));
 
subplot(2,2,3)
stem(LHS);
title('Evaluating superposition (LHS of eq.)')
xlabel('n')
ylabel('LHS[n]')
 
subplot(2,2,4)
stem(RHS);
title('Evaluating superposition (RHS of eq.)')
xlabel('n')
ylabel('RHS[n]')
lf = isequal(RHS,LHS);
if(lf==1)
    disp('Sys1 is Linear')
else
    disp('Sys1 is not Linear')
end

%The Sys1 is non-linear as RHS != LHS
 

%Time-invariance:
 
k=[1,50];
%cannot use x[n]=1 because it's the same everywhere
x1(k)=k;
y1=Sys1(x1);
%shifting by 2
for i=3:(k+2)
shiftedX(i)=x1(i-2);
shiftedY(i)=y1(i-2);
end
y2 = Sys1(shiftedX);
tf = isequal(y2,shiftedY);
 
if(tf == 1)
disp('Sys1 is Time-Invariant')
else
disp('Sys1 is not Time-Invariant')
end

%Sys1 is not Time-Invariant
