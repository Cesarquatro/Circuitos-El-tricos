close all; clc; clear;
%% 
syms s t

f_t = 10*exp(-4*t)*cos(20*t + deg2rad(36.9));
laplace(f_t)