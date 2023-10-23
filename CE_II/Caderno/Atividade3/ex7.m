close all; clc; clear;
%% Definindo a função G(t)
G = @(t) 2*t*(heaviside(t) - heaviside(t-1));

% Definindo o período T
T = 2;

% Plotando a função G(t)
figure(1);
fplot(@(t) G(mod(t, T)), [0 6], 'LineWidth', 2, 'color', 'r');
xlabel('t');
ylabel('G(t)');
title('Função Periódica G(t) com T = 2');
grid on;

