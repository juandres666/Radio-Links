clear all;clc;

global S03W079;
global S03W080;
global S04W079;
global S04W080;
load('AzuayGEO.mat');

t_lat=dms2degrees([-2 53 44.38]);% T Latitud (X)
t_lon=dms2degrees([-78 59 45.88]);% T Longitud(Y)
[f_x,f_y,utmzone]=deg2utm(t_lat,t_lon);


[m_x,m_y]=perfil_grados(20000,f_x,f_y,pi);

[perfil_d,perfil_h]=perfiles(f_x,f_y,m_x,m_y);

plot(perfil_d,perfil_h);