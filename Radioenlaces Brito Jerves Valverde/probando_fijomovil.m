%% Curvas de nivel
clear all;clc;
global S03W079;
global S03W080;
global S04W079;
global S04W080;
load('AzuayGEO.mat');

%% Datos Transmisor
f_lat=dms2degrees([-3 1 0]);% T Latitud (X)     -02 48 46.62
f_lon=dms2degrees([-79 2 0]);% T Longitud(Y)    -78 54 03
[f_x,f_y,utmzone]=deg2utm(f_lat,f_lon);

clear f_lat;clear f_lon;clear utmzone;

%% datos iniciales
da=1.000;%analisis cada da Km
da=da*1000;%da en mts

d=20;%distancia en Km
d=d*1000;%d en mts

%% Calculos
[X,Y]  =meshgrid(f_x-d:da:f_x+d,f_y-d:da:f_y+d);
x_tam=size(X);
for i=1:x_tam(2)
    for j=1:length(Y)
        [x_g,y_g]=utm2deg(X(i,j),Y(i,j),'17 M');
        Z(i,j)=altitude(x_g,y_g);
    end
end 
%% estacion fija en el origen
X=X-f_x;
Y=Y-f_y;

%% Plot 3D
%surface(X,Y,Z)
%mesh(X,Y,Z);
%surfc(X,Y,Z);

% surfl(X,Y,Z);
% shading interp
% colormap(gray)

%% Plot curvas de nivel interpoladas
% [XI,YI]=meshgrid(-d:100:+d,-d:100:+d);
% [C,h]=contour(interp2(X./1000,Y./1000,Z,XI./1000,YI./1000));
% set(h,'ShowText','on')
% colormap cool

%% Plot 3D y curvas de nivel con interpolacion
% [XI,YI]=meshgrid(-d:100:+d,-d:100:+d);
% 
% surfl(interp2(X./1000,Y./1000,Z,XI./1000,YI./1000));
% shading interp;
% colormap(gray);
% hold on;
% xlabel('X (Km) *lat');
% ylabel('Y (Km) *lon');
% zlabel('Altura (m)');
% 
% %%%
% [C,h]=contour(interp2(X./1000,Y./1000,Z,XI./1000,YI./1000),'b');
% set(h,'ShowText','on')
% %%%
% hold off

%% Plot 3D y curvas de nivel sin interpolacion
surfl(X./1000,Y./1000,Z);
shading interp;
colormap(gray);
hold on;
xlabel('X (Km) *lat');
ylabel('Y (Km) *lon');
zlabel('Altura (m)');

%%%
[C,h]=contour(X./1000,Y./1000,Z,'b');
shading interp;
set(h,'ShowText','on')
%%%
hold off