close all; clc; clear;
%% Ex 3 atividade 5

R = 150;
L = 375e-3;
C = 0.667e-6;

f = 0:1:1000;

num = 1i * (f * L - 1 ./ (f * C));
den = R + 1i * (f * L - 1 ./ (f * C));

filtro = num ./ den;

figure(1)
plot(f, filtro, 'LineWidth',5)
title('Resposta em Frequência do Filtro')
xlabel('Frequência (Hz)')
ylabel('Magnitude do Filtro')
grid on;