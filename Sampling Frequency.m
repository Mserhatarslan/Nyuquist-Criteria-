% Endustryel Haberlesme 

t = linspace(0, 0.2, 100000);
%% Mesaj Sinyali :
fc = 2000;           % tasiyici sinyal frekansi
fs=40000;            % ornekleme frekansý
fm = 200;            % mesaj sinyali frekansi
Am = 10;             % mesaj sinyali genligi
wc=2*pi*fc*t;        % Tasiyici sinyal acisal frekans(rad)
wm=2*pi*fm*t;        % Mesaj sinyali acisal frekans
Ac=10;               % Tasiyici sinyal genligi
l=10000;
em = Am*sin(wm);     % Mesaj sinyali
figure;
subplot(4, 1, 1);
plot(t(1:l), em(1:l));
title('Mesaj Sinyali');
xlabel('Zaman(t)');
ylabel('Genlik');
%% Tasýyici Sinyal :
m=Am/Ac;                 % AM modulasyon indisi
ec = Ac*sin(wc);
subplot(4, 1, 2);
plot(t(1:l), ec(1:l));
title('Tasiyici Sinyal');
xlabel('Zaman(t)');
ylabel('Genlik');
%% Module Edilmis Sinyal :
y = ammod(em, fc, l, 0, Ac);
subplot(4, 1, 3);
plot(t(1:l), y(1:l));
title('Moduleli Sinyal');
xlabel('Zaman(t)');
ylabel('Genlik');
%% Demodule Edilmis Sinyal :
z = amdemod(y, fc, l, 0, Ac);
subplot(4, 1, 4);
plot(t(1:l), z(1:l));
title('Demodule  Sinyal');
xlabel('Zaman(t)');
ylabel('Genlik');


