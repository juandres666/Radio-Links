clear all;clc;
global S03W079;
global S03W080;
global S04W079;
global S04W080;
load('AzuayGEO.mat');
%% Datos Transmisor
t_lat=dms2degrees([-2 58 35]);% T Latitud (X)                -2 48 46.62
t_lon=dms2degrees([-78 59 36]);% T Longitud(Y)                   -78 54 3
[t_x,t_y,utmzone]=deg2utm(t_lat,t_lon);
t_h=50;% Altura de la antena transmisora

t_P=100;%dB
t_Ga=35;%dB

t_ca=0.1;%Tx cable atenuacion*m dB/m
t_cl=10;%Tx cable longitud m
t_cp=t_ca*t_cl;%Tx cable atenuación dB
clear utmzone;
%% Datos Receptor
r_lat=dms2degrees([-2 58 38]);% R Latitud (X)                    -2 53 2
r_lon=dms2degrees([-78 58 3]);% R Longitud(Y)                    -78 54 3
[r_x,r_y,utmzone]=deg2utm(r_lat,r_lon);
r_h=330;% Altura de la antena receptora
clear utmzone;

r_P=100;
r_Ga=35;

r_ca=0.1;
r_cl=10;
r_cp=r_ca*r_cl;%Tx cable atenuación dB

r_snstv=-60;%sensitividad dBmW
r_snstv=r_snstv-30;%dB W
         %sensibividad guide
%% %% Datos del sistema
f=7000;%en Mhz
pol=1;%polarización 1H  2V
tip_suelo=4;

d_diff=499;%numero de puntos para el plot

%[linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil(t_x,t_y,t_h,t_P,t_Ga,t_ca,t_cl, r_x,r_y,r_h,r_P,r_Ga,r_ca,r_cl,r_snstv, f,pol,tip_suelo, d_diff)

[perfil_intp,perfil_intp_d, linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil_fm(t_x,t_y,t_h,t_P,t_Ga,t_ca,t_cl, r_x,r_y,r_h,r_P,r_Ga,r_ca,r_cl,r_snstv, f,pol,tip_suelo, d_diff,0)

