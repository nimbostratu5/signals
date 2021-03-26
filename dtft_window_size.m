clear all;
 
sample_rate=20;
N1=floor(sample_rate*2);
 
 
for j=1:5
    subplot(10,1,2*j);
    window_size=10;
   
    w=(-window_size*pi):0.05:(window_size*pi);
    n1=1:(window_size*N1);
    x=sin(((2*pi).*n1)/N1);
    stem(n1,x);
    
    title(['sampled x[n] @rate of:' num2str(sample_rate) ]);
    y1=abs(fft(x));
    subplot(10,1,2*j-1);
    plot(y1);
    title('DTFT of x(n) noor alali 26797180');
    
end
