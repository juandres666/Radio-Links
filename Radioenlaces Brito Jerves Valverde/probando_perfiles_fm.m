clear all;clc;
global S03W079;
global S03W080;
global S04W079;
global S04W080;
load('AzuayGEO.mat');

%% Datos estacion fija
f_lat=dms2degrees([-02 53 44.38]);% F Latitud (X)     -02 48 46.62
f_lon=dms2degrees([-78 59 45.88]);% F Longitud(Y)    -78 54 03
[f_x,f_y,utmzone]=deg2utm(f_lat,f_lon);
f_h=50;%altura antena

f_P=10*log10(100);%dB
f_Ga=15.65;

f_ca=0.1;%F cable atenuacion*m dB/m
f_cl=20;%F cable longitud m
f_cp=f_ca*f_cl;%F cable atenuación dB

clear f_lat;clear f_lon;clear utmzone;
%% Datos estacion movil
m_h=1.5;% Altura de la antena receptora
clear utmzone;

m_P=1;
m_Ga=0;

m_ca=0.1;
m_cl=0;
m_cp=m_ca*m_cl;%Tx cable atenuación dB

m_snstv=38.5;%sensitividad dBmW
%% Datos Sistema
f=400;%en Mhz
pol=1;%polarización 1H  2V
tip_suelo=4;

%% Datos
theta_dif=30;
theta_dif=theta_dif*pi/180;

d_max=20;%d max de analisis en Km
d_max=d_max*1000;%dmax en m

d_diff=2;%d diferencial en km
d_diff=d_diff*1000;%d_diff en m
%% 
m=0;
for a=0:theta_dif:359*pi/180
    m=m+1;
    n=0;
    m_x1=0;
    m_y1=0;
    for l=d_diff:d_diff:d_max
        [m_x,m_y]=perfil_grados(l,f_x,f_y,a);%[m_x,m_y]=perfil_grados(d,f_x,f_y,theta)
        
        [perfil_intp,perfil_intp_d,rd, linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil_fm(f_x,f_y,f_h,f_P,f_Ga,f_ca,f_cl, m_x,m_y,m_h,m_P,m_Ga,m_ca,m_cl,m_snstv,f,pol,tip_suelo,499,0);
        
        if enlace_pr==0%pts negros
            n=n+1;
            pts_bk(m,n)=rd;
        end
    end
    
    figure
    [perfil_intp,perfil_intp_d,rd, linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil_fm(f_x,f_y,f_h,f_P,f_Ga,f_ca,f_cl, m_x,m_y,m_h,m_P,m_Ga,m_ca,m_cl,m_snstv, f,pol,tip_suelo,   499, 1);
    hold on
    tam=size(pts_bk)
    for a=1:1:tam(2)
        if pts_bk(m,a)~=0
            plot(pts_bk(m,a),ppval(perfil_intp,pts_bk(m,a)),'r*')
        end
    end
    hold off
end