function [ser] = zf_mimo_8x8_fixed_point(N,snr,bits,pQ,pR)

global Q
global recvd
M=4;
x = randi([0 M-1],1,N);
xmod=qammod(x,M);
xmod=reshape(xmod,8,N/8);
xmod=kron(xmod,[1,1,1,1,1,1,1,1]);
for i=1:64
    h(i,:)=1/sqrt(2)*(randn(1,N/8) + 1i*randn(1,N/8));
end
H=reshape(h,8,N);
y=reshape(sum(H.*xmod,1),8,N/8);
H=reshape(h,8,8,N/8);

N1=1/sqrt(2)*(randn(1,N)+1i*randn(1,N));
N1=reshape(N1,8,N/8);
ynoisy=y+10^(-(snr-10*log10(16))/20)*N1;
ynoisy=reshape(ynoisy,8,1,N/8);
B=[];recvd=[];
for kk=1:N/8
Heq=transpose(H(:,:,kk));
[Q,R]=qr(Heq,0);

Q_fixed = int32(Q*(2^bits)); %12bit map
Q_fixed_r = binary_fault_injection_clib(real(Q_fixed),bits,pQ);
Q_fixed_i = binary_fault_injection_clib(imag(Q_fixed),bits,pQ);
Q_double = complex(Q_fixed_r,Q_fixed_i);
Q_double = double(double(Q_double)/(2^bits));

R_fixed = int32(R*(2^bits)); %12bit map
R_fixed_r = binary_fault_injection_clib(real(R_fixed),bits,pR);
R_fixed_i = binary_fault_injection_clib(imag(R_fixed),bits,pR);
R_double = complex(R_fixed_r,R_fixed_i);
R_double = double(double(R_double)/(2^bits));

recvd = [recvd,R_double\(Q_double'*ynoisy(:,:,kk))];
%recvd = [recvd,R\(Q'*ynoisy(:,:,kk))];
end
finy=qamdemod(reshape(recvd,1,N),M);
[num ty]=symerr(x,finy);
ser=ty;

end
