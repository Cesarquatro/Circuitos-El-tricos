close all; clc; clear;
%% 
syms t

gt = 2*dirac(t) + 3 + 4*heaviside(t)

fplot(gt,[-2, 6], 'color', 'r', 'LineWidth', 4)
grid on

laplace(gt)