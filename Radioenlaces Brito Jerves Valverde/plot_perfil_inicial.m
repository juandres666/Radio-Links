function plot_perfil_inicial(perfil_h,perfil_d,t_h,r_h,d,d_diff)
%% Plot perfil sin corregir, corregido, antenas y ejes
% perfil_h      Perfil altura sin corregir, sin interpolar
% perfil_d      Perfil distancia sin corregir, sin interpolar
% t_h           Altura de antena Tx
% r_h           Altura de antena Rx
% d             Distancia total del enlace
%d_diff         Numero de puntos para el plot

perfil_intp_d=0:d/d_diff:d;

%% 
perfil_intp=interp1(perfil_d,perfil_h,'v5cubic','pp');%Perfil_d y perfil_h interpolado

%% Plot perfil,antenas y ejes
plot(perfil_intp_d,ppval(perfil_intp,perfil_intp_d),'r--')% plot perfil sin corregir
hold on;
ylabel('Altura (m)');

xlabel('Distancia Tx - Rx (m)');
td=0;% distancia del transmisor x
th=(perfil_h(1)+t_h);% altura trasnmisor total y
line([td td],[ppval(perfil_intp,perfil_intp_d(1)) th],'LineWidth',4,'Color',[.5 .5 .5]);% plot Antena Tx
rd=d;% distancia del transmisor x
rh=(ppval(perfil_intp,perfil_intp_d(length(perfil_intp_d)))+r_h);% altura trasnmisor total y
line([rd rd],[ppval(perfil_intp,perfil_intp_d(length(perfil_intp_d))) rh],'LineWidth',4,'Color',[.8 .8 .8]);%plot Antena Rx

xlim([-100 d+100]);

%% Plot correccion de alturas
perfil_h=perfil_h+(((d-perfil_d).*perfil_d)./(2*4/3*6370000));

perfil_intp=interp1(perfil_d,perfil_h,'v5cubic','pp');%Perfil_d y perfil_h interpolado
plot(perfil_intp_d,ppval(perfil_intp,perfil_intp_d),'b-');% plot perfil corregido
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Linea de vista: Interpola  y plotea
lin_vista=interp1([rd td],[rh th],'linear','pp');
plot(perfil_intp_d,ppval(lin_vista,perfil_intp_d),'g')% plot linea directa
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%hold off
