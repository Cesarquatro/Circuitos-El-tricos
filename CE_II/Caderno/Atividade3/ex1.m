close all; clc; clear;
% Definindo a função G(t)
G = @(t) heaviside(t) - heaviside(t-2);

% Definindo o período T
T = 5;

% Plotando a função G(t)
figure(1);
fplot(@(t) G(mod(t, T)), [0 13], 'LineWidth', 1.5);
xlabel('t');
ylabel('G(t)');
title('Função Periódica G(t) com T = 5');
grid on;

syms s t

% Definindo o período T
T = 5;

% Calculando a Transformada de Laplace
Laplace_G = (1 - exp(-2*s))/(s*(1 - exp(-5*s)));

% Simplificando a expressão
Laplace_G = simplify(Laplace_G);

disp('A Transformada de Laplace de G(t) é:');
disp(Laplace_G);


