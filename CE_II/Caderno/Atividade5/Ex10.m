close all; clc; clear;
%% Ex 10 atividade 5
%% a)      200s
%     ---------------
%       (s+2)(s+10)     =   s² - 12s + 20

num_a = 200;
den_a = [1 -12 20];

Cs = tf(num_a, den_a)

figure(1)
bode(Cs)

%% b)        s + 10
%     30----------------
%         s² + 3s + 50

num_b = [30 300]; % 30 * [1 10]
den_b = [1 3 50];

Hs = tf(num_b, den_b)

figure(2)
bode(Hs)

%% c)           s + 3
%     10----------------------
%         s³ + 3s² + 4s + 4

num_c = [10 30]; % 10 * [1 3]
den_c = [1 3 4 4];

Is = tf(num_c, den_c)

figure(2)
bode(Is)