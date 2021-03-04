function []=analiza_perfil(t_x,t_y,t_h,t_P,t_Ga,t_ca,t_cl, r_x,r_y,r_h,r_P,r_Ga,r_ca,r_cl,r_snstv, f,pol,tip_suelo, d_diff)
%% Datos Transmisor
% t_h=50;% Altura de la antena transmisora
% t_P=100;%dB
% t_Ga=35;%dB
% t_ca=0.1;%Tx cable atenuacion*m dB/m
% t_cl=10;%Tx cable longitud m

% Datos Receptor
% r_h=330;% Altura de la antena receptora
% r_P=100;
% r_Ga=35;
% r_ca=0.1;
% r_cl=10;
% r_snstv=-60;%sensitividad dBmW
% sensibividad guide

% %% %% Datos del sistema
% f=100;%en Mhz
% pol=1;%polarización 1H  2V
% tip_suelo=4;
% d_diff=499;%numero de puntos para el plot

t_cp=t_ca*t_cl;%Tx cable atenuación dB
r_cp=r_ca*r_cl;%Tx cable atenuación dB
r_snstv=r_snstv-30;%dB W
d=sqrt((t_x-r_x)^2+(t_y-r_y)^2);%distancia Tx - Rx

perfil_intp_d=0:d/d_diff:d;
%%
[perfil_d,perfil_h]=perfiles(t_x,t_y,r_x,r_y);% Crea perfiles de altura y distancia

%% Posicion de las antenas
td=0;% distancia del transmisor x
th=(perfil_h(1)+t_h);% altura trasnmisor total y
rd=d;% distancia del transmisor x
rh=(perfil_h(length(perfil_h))+r_h);% altura trasnmisor total y

%% Linea de vista: Interpola
lin_vista=interp1([rd td],[rh th],'linear','pp');

%% Plot perfil general
plot_perfil_inicial(perfil_h,perfil_d,t_h,r_h,d,d_diff)
hold on

%% Correccion de alturas
perfil_h=perfil_h+(((d-perfil_d).*perfil_d)./(2*4/3*6370000));
perfil_intp=interp1(perfil_d,perfil_h,'v5cubic','pp');%Perfil_d y perfil_h interpolado

%% Fresnel: Interpola y plotea
R1=548.*sqrt((((perfil_intp_d)./1000).*((d-(perfil_intp_d))./1000))./(f.*(d./1000)));%rayo 1 de fresnel
Fres_min=ppval(lin_vista,perfil_intp_d)-R1;%R1-altura rayo directo

plot_fresnel(rd,td,rh,th,perfil_intp_d,d,f);%Plotea fresnel

%% Saca alturas maximas
[max_h,max_h_d,max_h_k]=alturas_max(perfil_intp,perfil_intp_d);

%% Reflejado: Plot
[lin_vista_refle,k]=plot_refl(f,d,td,th,rd,rh,perfil_intp,perfil_intp_d);
grid on;hold off;

%% Linea de vista: Existe? SI-> Calculo:PIRE,Lb,f(gas,lluvia), NO->No calculo nada
if (isempty(find((ppval(lin_vista,max_h_d)-max_h)<0)))
    disp('Existe linea de vista')
else
    disp('No existe linea de vista')
end

%% Condicion de difraccion->SI:Calculos finales.
[calculo_difr,Ld_difr]=difraccion(td,th,rd,rh,d,R1,lin_vista,f,perfil_intp,perfil_intp_d,max_h,max_h_d,max_h_k)
Lb=0;
Lb=Lb+Ld_difr;
if (calculo_difr==1)
    PIRE=t_P-t_cp+t_Ga%Tx: potencia - perdida cable + ganancia antena
    
    Lb=32.45+20*log10(d*1000)+20*log(f)% perdidas basicas
    
    if f>6000%f > 6Ghz -> Perdidas por lluvia y gases
        [A,Agas]=perdida_lluvia_gas(f/1000,d*1000,pol,1,7.5)
        Lb=Lb+A+Agas;
        disp('hay perdidas por lluvia y gases')
    end
    
    [calculo_refl,Lb_refl]=reflexion(th,rh,f,d,tip_suelo,pol,lin_vista_refle,perfil_intp_d,k)
    Lb=Lb+Lb_refl;
    
    Pr=PIRE-Lb+r_Ga-r_cp%r_cp no va
    
    if Pr<r_snstv
        disp('No hay enlace Pr baja')
    else
        disp('Existe enlace Pr')
    end
    
    EdB=Pr+20*log10(f)+107.3
end
%% 
return