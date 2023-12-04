close all; clc; clear;
%% Ex 6 atividade 5

% Considerando RsobreL como 1
RsobreL = 1;

num = 1;
den = [1 RsobreL];

Hs = tf(num, den)

bode(Hs)