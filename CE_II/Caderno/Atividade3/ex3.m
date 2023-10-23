close all; clc; clear;
%% 
syms t s

% Definindo a função
F = 5 - 5*t.^(-2*t).*(1 + 2*t);

% Calculando a Transformada de Laplace
Laplace_F = laplace(F)
