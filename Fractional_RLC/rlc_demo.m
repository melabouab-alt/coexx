clear; clc;
aSet = [0.8 0.9 1.0];
tau = 1e-3; V0 = 1; Z0 = 10;
h = 0.0025; U = 60;
A = [0 1; -1 -1]; b = [0;1];
N = round(U/h); u = (0:N)*h;
X = zeros(3,N+1); Y = X;
for k = 1:3
    a = aSet(k);
    w = zeros(1,N+1); w(1) = 1;
    for j = 1:N
        w(j+1) = (1-(a+1)/j)*w(j);
    end
    z = zeros(2,N+1);
    G = (eye(2)-h^a*A)\eye(2);
    for n = 1:N
        hist = z(:,n:-1:1)*w(2:n+1).';
        z(:,n+1) = G*(h^a*b-hist);
    end
    X(k,:) = z(1,:); Y(k,:) = z(2,:);
end
tms = 1e3*tau*u;
subplot(2,1,1);
plot(tms,V0*X,'LineWidth',1.2);
xlim([0 12]); grid on;
ylabel('Capacitor voltage (V)');
legend('a=0.8','a=0.9','a=1.0');
subplot(2,1,2);
plot(tms,1e3*V0/Z0*Y,'LineWidth',1.2);
xlim([0 12]); grid on;
xlabel('Time (ms)'); ylabel('Current (mA)');
f = logspace(0,4,1200);
figure; hold on;
for a = aSet
    p = (1i*2*pi*f*tau).^a;
    H = 1./(p.^2+p+1);
    semilogx(f,20*log10(abs(H)));
end
set(gca,'XScale','log'); grid on;
xlabel('Frequency (Hz)'); ylabel('Gain (dB)');
legend('a=0.8','a=0.9','a=1.0');
