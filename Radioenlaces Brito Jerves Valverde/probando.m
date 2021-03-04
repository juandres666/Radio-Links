global S03W079;
global S03W080;
global S04W079;
global S04W080;

load('AzuayGEO.mat');

f=100;%en Mhz

%Transmisor
t_lat=dms2degrees([-3 1 0]);% T Latitud (X)                -2 48 46.62
t_lon=dms2degrees([-78 59 0]);% T Longitud(Y)                   -78 54 3
[t_x,t_y,utmzone]=deg2utm(t_lat,t_lon);
t_h=50;% Altura de la antena transmisora

%Receptor
r_lat=dms2degrees([-2 58 0]);% R Latitud (X)                    -2 53 2
r_lon=dms2degrees([-79 2 0]);% R Longitud(Y)                    -78 54 3
[r_x,r_y,utmzone]=deg2utm(r_lat,r_lon);
r_h=50;% Altura de la antena receptora
clear utmzone;

d=sqrt((t_x-r_x)^2+(t_y-r_y)^2);

%% Crea perfiles de altura y distancia
a=atan((r_y-t_y)/(r_x-t_x));% angulo del perfil
if a<0,a=a+pi;end% solo angulos positivos

%if isnan(a) %Si el punto Rx = Tx
if ((a>=0)&&(a<pi/4))||((a>=3*pi/4)&&(a<=pi)) % barrido x
    paso=abs(92.493612435968075*cos(a));% distancia diferencial para paso de distancia del enlace
    
    pp=interp1([t_x r_x],[t_y r_y],'linear','pp');
    if t_x>r_x
        disp('x')
        x_i=r_x:paso:t_x;
    elseif t_x<r_x
        disp('x*')
        x_i=t_x:paso:r_x;
    end
    y_i=ppval(pp,x_i);
    %rapidez??->perfil=zeros([length(x_i) 3]);perfil_h=zeros([1 length(x_i)]);
    for k=1:1:length(x_i)
        [perfil(k,1),perfil(k,2)]=utm2deg(x_i(k),y_i(k),'17 M');
        perfil_h(k)=altitude(perfil(k,1),perfil(k,2));
    end
elseif (a>=pi/4)&&(a<3*pi/4) % barrido y
    paso=abs(92.493612435968075*cos(pi/2-a));% distancia diferencial para paso de distancia del enlace
    
    pp=interp1([t_y r_y],[t_x r_x],'linear','pp');
    if t_y>r_y
        disp('y')
        y_i=r_y:paso:t_y;
    elseif t_y<r_y
        disp('y*')
        y_i=t_y:paso:r_y;
    end
    x_i=ppval(pp,y_i);
    
    for k=1:1:length(y_i)
        [perfil(k,1),perfil(k,2)]=utm2deg(x_i(k),y_i(k),'17 M');
        perfil_h(k)=altitude(perfil(k,1),perfil(k,2));
    end
end
perfil_d=0:d/(length(perfil_h)-1):d;% crea perfil de distancias
clear a;clear pp;clear paso;clear x_i;clear y_i;clear perfil;clear k;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Plot perfil,antenas y ejes
plot(perfil_d,perfil_h,'r--');% plot perfil sin corregir
hold on;
ylabel('Altura');
if (t_x>r_x)||(t_y>r_y)
    xlabel('Distancia Rx - Tx');
    rd=0;% distancia del receptor x
    rh=(perfil_h(1)+r_h);% altura receptor total y
    line([rd rd],[perfil_h(1) rh],'LineWidth',4,'Color',[.8 .8 .8]);% Antena Rx
    td=d;% distancia del transmisor x
    th=(perfil_h(length(perfil_h))+t_h);% altura trasnmisor total y
    line([td td],[perfil_h(length(perfil_h)) th],'LineWidth',4,'Color',[.5 .5 .5]);% Antena Tx
elseif (t_x<r_x)||(t_y<r_y)
    xlabel('Distancia Tx - Rx');
    td=0;% distancia del transmisor x
    th=(perfil_h(1)+t_h);% altura trasnmisor total y
    line([td td],[perfil_h(1) th],'LineWidth',4,'Color',[.5 .5 .5]);% Antena Tx
    rd=d;% distancia del transmisor x
    rh=(perfil_h(length(perfil_h))+r_h);% altura trasnmisor total y
    line([rd rd],[perfil_h(length(perfil_h)) rh],'LineWidth',4,'Color',[.8 .8 .8]);% Antena Rx
end
xlim([-100 d+100]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Plot correccion de alturas
perfil_ha=perfil_h;
perfil_h=perfil_ha+(((d-perfil_d).*perfil_d)./(2*4/3*6370000));
plot(perfil_d,perfil_h,'b-');% plot perfil corregido
clear perfil_ha;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Linea de vista: Interpola  y plotea
lin_vista=interp1([rd td],[rh th],'linear','pp');
plot(perfil_d,ppval(lin_vista,perfil_d),'g');% o sino: line([rd td],[rh th],'LineWidth',1,'Color',[1 0 0]);%linea directa
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Fresnel: Interpola y plotea
R1=548.*sqrt(((perfil_d./1000).*((d-perfil_d)./1000))./(f.*(d./1000)));%rayo 1 de fresnel

Fres_min=ppval(lin_vista,perfil_d)-R1;%R1-altura rayo directo
Fres_max=ppval(lin_vista,perfil_d)+R1;%R1+altura rayo directo

plot(perfil_d,Fres_min,'k');
plot(perfil_d,Fres_max,'k');
clear R1;clear Fres_max;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Reflejado: 



%% 
hold off;