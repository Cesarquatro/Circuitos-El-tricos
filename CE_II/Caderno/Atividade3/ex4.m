close all; clc; clear;
%% 
syms t omega

% Defina um valor específico para omega
omega_val = 1; % Por exemplo, omega = 1

% g(t) = 
gt = 50 * cos(omega_val*t)*heaviside(t-2);
gt2 = 50 * cos(omega_val*t);

figure(1)
fplot(gt, [0, 6.28], 'color', 'r', 'LineWidth', 10)
alpha(0.5)
hold on
grid on
fplot(gt2, [0, 6.28], 'color', 'b', 'LineWidth', 4)
alpha(0.5)