n = randi([-1 1],length(t),1);
for s=1:length(t)
    if n(s)==0
        n(s)=1;
    end
end
x1 = 10*n';

omega = unwrap(angle(fft(y)));
Sy = (fft(x1).*exp(-1i*2*pi*omega)).^2;

x1_subd = ifft(sqrt(Sx1_subd).*exp(1i*omega*2*pi));

for s=1:length(n)
    if x1_subd(s)>0
        n_subd(s)=1;
    else
        n_subd(s)=-1;
    end
end

numError=0;
for s=1:length(n)
    if n_subd(s) ~= n(s)
        numError = numError+1;
    end
end

numError