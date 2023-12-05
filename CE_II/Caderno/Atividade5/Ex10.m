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

figure(3)
bode(Is)

%% d)        25
%     ----------------
%       s² + 4s + 25

num_d = [25]; % 30 * [1 10]
den_d = [1 4 25];

Xs = tf(num_d, den_d)

figure(4)
bode(Xs)

%% e)   9(s² + 0.2s + 1)
%     --------------------
%       s(s² + 1.2s + 9)

num_e = [9 1.8 9]; % 9 * [1 0.2 1]
den_e = [1 1.2 9 0];  % s * [1 1.2 9]

Js = tf(num_e, den_e)

figure(5)
bode(Js)

%% f)       1
%     -------------
%       s(s² + 1)

num_f = [1]; 
den_f = [1 1 0];  % s * [1 1]

Ds = tf(num_f, den_f)

figure(6)
bode(Ds)

%% g)      2(s + 1)
%     -------------------
%       (s + 2)(s + 10)     =   s² - 12s + 20

num_g = [2 2];    % 2 * [1 1]
den_g = [1 -12 20];  % s * [1 1]

Ls = tf(num_g, den_g)

figure(7)
bode(Ls)

%% h)          s
%     -------------------
%       (s + 2)²(s + 1)     =   s³ + 5s² 6s + 2

num_h = [1 0];    
den_h = [1 5 6 2];  

Ks = tf(num_h, den_h)

figure(8)
bode(Ks)