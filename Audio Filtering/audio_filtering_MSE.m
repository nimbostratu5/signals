clear all
[y,fs] = audioread('Original.wav');
t=[1/fs:1/fs:length(y)/fs];
subplot(2,2,1)
plot(t,y)
 
[y2,fs2] = audioread('Distorted.wav');
t2=[1/fs2:1/fs2:length(y2)/fs2];
subplot(2,2,2)
plot(t2,y2)
 
L = 44100;
mse = 0;
for j=1:L
mse = (1/L)*( ( y(j)-y2(j) ).^2 ) + mse ;  
end
display(mse)
 
b = fir1(10,1/fs); 
newd = filter(b,1,y2);
subplot(2,2,3)
plot(t,newd)
title('Filtered Data')
 
mse2 = 0;
for j=1:L
mse2 = (1/L)*( ( y2(j)- newd(j) ).^2 ) + mse2 ;  
end
display(mse2)
