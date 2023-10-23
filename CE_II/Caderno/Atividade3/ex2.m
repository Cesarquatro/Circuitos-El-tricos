close all; clc; clear;
%% 
syms t

% Definindo a função G(t)
gt = 5*heaviside(t-1) + 5*heaviside(t-2) - 10*heaviside(t-3);

figure(1)
fplot(gt, [0, 4], 'color', 'r', 'LineWidth',2)
grid on

Gs = laplace(gt)

simplify(Gs)


