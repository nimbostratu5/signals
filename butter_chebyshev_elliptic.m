clear all;
close all;
clc;
 
fs=6000;
t=0:1/fs:149/fs;
x= sin(100*t)+sin(2000*t)+sin(6000*t);
plot(x)
title('x= sin(100*t)+sin(2000*t)+sin(6000*t)');
 
% computing fft 
figure;
plot(abs(fft(x)));
title('fourier transform of x');
ylabel ('t');
xlabel ('x');
 
%applying filtering
[b1,a1]= butter(4,[0.09 0.12]);
 
[b2,a2]= butter(8,[0.09 0.12]);
 
g1=tf(a1,b1);
g2=tf(a2,b2);
%plotting
figure;
bode(g1,{30,3000});grid;
title('butter(4)');
figure;
bode(g2,{30,3000});grid;
title('butter(8)');
 
y1=filter(b1,a1,x);
 
y2=filter(b2,a2,x);
figure;
subplot(4,1,1);
 
plot(x);
 
title('signal x');
 
subplot(4,1,2);
 
plot(t,y1);
 
title('butterworth filter order 4');
ylabel ('filter');
xlabel ('time');
 
subplot(4,1,3);
 
plot(t,y2);
 
title('butterworth filter order 8');
ylabel ('filter');
xlabel ('time');
 
subplot(4,1,4);
plot(abs(fft(y2)));
title('fft butterworth filter order 8');
ylabel ('t');
xlabel ('y');
 
 
%The following is b) & d)
 
[b3,a3]= cheby1(4,1,[0.09 0.12]);
 
[b4,a4]= cheby1(8,1,[0.09 0.12]);
 
g3=tf(a3,b3);
g4=tf(a4,b4);
 
figure;
bode(g3,{30,3000});grid;
title('cheby1(4)');
figure;
bode(g4,{30,3000});grid;
title('cheby1(8)')
 
y3=filter(b3,a3,x);
 
y4=filter(b4,a4,x);
 
figure;
subplot(4,1,1);
 
plot(x);
 
title('signal x');
 
subplot(4,1,2);
 
plot(t,y3);
 
title('Cheby filter order 4');
ylabel ('filter');
xlabel ('time');
 
subplot(4,1,3);
 
plot(t,y4);
 
title('Chebyshev filter order 8');
ylabel ('filter');
xlabel ('time');
 
subplot(4,1,4);
plot(abs(fft(y4)));
title('fft + cheby1 filter 8');
ylabel ('t');
xlabel ('y');
 
%The following is c) & d)
 
[b5,a5]= ellip(4,1,60,[0.09 0.12]);
 
[b6,a6]= ellip(8,1,60,[0.09 0.12]);
 
g5=tf(a5,b5);
g6=tf(a6,b6);
 
figure;
bode(g5,{30,3000});grid;
title('ellip(4)');
figure;
bode(g6,{30,3000});grid;
title('ellip(8)');
y5=filter(b5,a5,x);
 
y6=filter(b6,a6,x);
figure;
subplot(4,1,1);
 
plot(x);
 
title('signal x');
 
subplot(4,1,2);
 
plot(t,y5);
 
title('Elliptic filter order 4');
ylabel ('filter');
xlabel ('time');
 
subplot(4,1,3);
 
plot(t,y6);
 
title('Elliptic filter order 8');
ylabel ('filter');
xlabel ('time');
 
subplot(4,1,4);
plot(abs(fft(y6)));
title('fft + elliptic filter order 8');
ylabel ('t');
xlabel ('y');
