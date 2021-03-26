clear all;
nP=5;
step_size=4;
w=(-nP*pi):step_size:(nP*pi);
 
for k=1:5
    subplot(10,1,2*k);
 %  sample_rate=input('Enter the sampling rate:');
 sample_rate=10;
    N1=floor(sample_rate*2);
    n=1:(2*N1-1);% since we neeed two complete periods
    x=sin(((2*pi).*n)/N1);
    stem(n,x);
    title(['sampled x[n] @rate of:' num2str(sample_rate) ]);
    y1=abs(fft(x));
    subplot(10,1,2*k-1)
    plot(y1);
    title('DTFT of x(n)');    
end
