close all; clc; clear;
%% 
Vl = 220; % [V]
Vph = Vl / sqrt(3); % [V]
f = 60;   % [Hz]
r = 135;  % [Ω]
XL = 135; % [Ω]
omega =  2 * pi * f; % [rad/s]
L = XL/(omega);  % [H]
Rc = 0.1;  % [Ω]


%% Sem capacitor:

Q1 = 353.8; 
P1 = 353.7; % cte
%% 
% correção de FP
FP1 = 1; % 
Delta = 1;
Indutivo = 1; %1 para FP indutivo e -1, capacitivo
if Delta == 1 %delta
 Vc=Vl;
else %Y
 Vc=Vf;
end
 Sn = P1/FP1;
 Qn = Indutivo*sqrt((Sn^2)-(P1^2));
 Qc = Qn-Q1;
 CFP1 = (1/(2*pi*f))*(abs(Qc)/(3*(Vc^2)))
%% 
FP085 = 0.85; % 
Delta2 = 1;
Indutivo2 = 1; %1 para FP indutivo e -1, capacitivo
if Delta2 == 1 %delta
 Vc=Vl;
else %Y
 Vc=Vf;
end
 Sn = P1/FP085;
 Qn2 = Indutivo2*sqrt((Sn^2)-(P1^2));
 Qc2 = Qn2-Q1;
 CFP085 = (1/(2*pi*f))*(abs(Qc2)/(3*(Vc^2)))
%%
FP095 = 0.95; % 
Delta2 = 1;
Indutivo2 = -1; %1 para FP indutivo e -1, capacitivo
if Delta2 == 1 %delta
 Vc=Vl;
else %Y
 Vc=Vf;
end
 Sn = P1/FP095;
 Qn3 = Indutivo2*sqrt((Sn^2)-(P1^2));
 Qc3 = Qn3-Q1;
 CFP095 = (1/(2*pi*f))*(abs(Qc3)/(3*(Vc^2)))