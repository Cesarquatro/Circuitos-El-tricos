close all; clc; clear;
%% Ex 15.1.1 - David E. Johnson

R = 4;
L = 1/10;
C = 1/40;

w = 0:0.1:100;

modulo = 1./sqrt(((1/R)^2+(w*C - (1./(w*L))).^2));

fase = -1*atan(R*(w*C-(1./(w*L))));

figure(1)
subplot(2,1, 1)
plot(w, modulo, 'r', 'LineWidth',4)
title("Amplitude")
ylabel("|H(j\omega)|")
xlabel("\omega")
grid on

subplot(2,1, 2)
plot(w, fase, 'b', 'LineWidth',4)
title("Fase")
ylabel("\theta(\omega)")
xlabel("\omega")
grid on


