clear all;
clf;
nP=5;
step_size=4;
 
w=(-nP*pi):step_size:(nP*pi);
 
for j=1:1
    subplot(2,1,2*j);
    sample_rate=20;
    N1=floor(sample_rate*2);
    n=1:(2*N1-1);
    x=0.5*sin(((2*pi).*n)/N1)+0.33*sin(((4*pi).*n)/N1);
    stem(n,x);
    title(['sampled x[n] @rate of:' num2str(sample_rate) ]);
    y1=abs(fft(x));
    subplot(2,1,2*j-1)
    polar(y1);
    title('DTFT of x[n]');
end
