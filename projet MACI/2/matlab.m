% programme principal

clc;
clear all;


%%%%%%  donnees 

%----------------------
% Variable Theta

theta = 1 : 1 : 720 ;

%------------------


%%%% Param�tres thermo

gloabal Cv Cp h s 

cv          % Specific heat at constant volume
Cp = R*(a1+a2*T+a3*T^2+a4*T^3+a5*T^4);            % Capacit� calorifique de l'air � pression constante en


%%%%% Param�tres constants %%%%%%%%%%

global m R  Mair Diam L rman Volmort Vcylu tau_vol
m = 1000            ;            % Masse d'air piston en bas en kg
R = 8.314     ;              % Constante des GP en 
Mair = 29e-3 ;                       % Masse molaire de l'air en kg/mol


%%%%%%% Moteur

rman = 40e-3 ;
Diam = 0.080 ;                       % Diam�tre cylindre / piston
L = 144e-3 ;                        % Longueur de bielle
Vcylu = pi*2* rman * Diam^2 / 4 ;        % Volume cylindr�e unitaire en m^3
tau_vol = 11                   ;        % taux de compression
Volmort = Vcylu / (tau_vol - 1) ;     % volume mort  

%--------------------------------------

[dV,V] = biellemanivelle(theta)

%--------------------------------------

%%%%% Conditions initiales

Patm = 1.013e5   ;           % pression atmosph�rique en Pa
T0 = 293.15    ;             % Temp�rature atmosph�rique en K



%%%%% Param�tres Variants %%%%%%%%%%%

gamma = Cp / Cv;

