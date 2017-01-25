clear all
N = 100;
M = 2; % dimension of x
w = randn(M,N);
v = randn(M,N);

x = ones(M,1) * 15; % initialize the vector x
F = [1 1; 0 1];
H = [1 0; 0 2];


  
for k = 2:N;
    x(:,k) = F * x(:,k-1)+w(:,k-1);
end

Rww=eye(M);
Rvv=eye(M);

y = H * x + v;

P_est = zeros(M,M);
x_est = zeros(M,1);

for i = 2:N
%    x_prime_ori = F * x_est(:,i-1);
    x_prime = fix(F * x_est(:,i-1)*2^4)/2^4;   % fixed point with 11 bits integer and 4 bits fraction
    x_prime = quant_saturation(x_prime, 11);

%    y_prime_ori = H * x_est(:,i-1);
    y_prime = fix(H * x_est(:,i-1)*2^4)/2^4;
    y_prime = quant_saturation(y_prime, 11);

%    P_prime_ori = (F * P_est * F' + Rww);
    P_prime = fix((F * P_est * F' + Rww)*2^8)/2^8;
    P_prime = quant_saturation(P_prime, 20);
  
%    K_ori = P_prime * H' * inv(H * P_prime * H' + Rvv);
    K = fix(P_prime * H' * inv(H * P_prime * H' + Rvv)*2^12)/2^12;
    K = quant_saturation(K, 28);
    
    
%    x_est_ori(:,i) = x_prime + K * (y(:,i) - y_prime);
    x_est(:,i) = fix((x_prime + K * (y(:,i) - y_prime))*2^4)/2^4;
    x_est(:,i) = quant_saturation(x_est(:,i), 11);
    
    P_est_ori = P_prime - K * H * P_prime;
    P_est = fix((P_prime - K * H * P_prime)*2^8)/2^8;
    P_est = quant_saturation(P_est, 20);
end

figure
plot(x(1,:),'-k')
hold on
plot(x_est(1,:),'-r')
hold off
legend('Real data','Estimated result')

figure
plot(x(2,:),'-k')
hold on
plot(x_est(2,:),'-r')
legend('Real data','Estimated result')
hold off





