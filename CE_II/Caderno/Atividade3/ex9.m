close all; clc; clear;
%% 
syms t

% Definindo a função G(t)
gt = 20*heaviside(t) - 10*heaviside(t-4) - 10*heaviside(t-8);

figure(1)
fplot(gt, [-1, 10], 'color', 'r', 'LineWidth',2)
grid on

Gs = laplace(gt)

simplify(Gs)


