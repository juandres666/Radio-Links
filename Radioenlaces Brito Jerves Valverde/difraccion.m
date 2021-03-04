function [calculo_difr,Ld]=difraccion(td,th,rd,rh,d,R1,lin_vista,f,perfil_intp,perfil_intp_d,max_h,max_h_d,max_h_k)
%% Difraccion
h=max_h-ppval(lin_vista,max_h_d);
for k=1:length(max_h_k),hR(k)=h(k)./R1(max_h_k(k));end
n_perdidas=0;
calculo_difr=1;
for k=1:length(hR)
    if hR(k)<-0.6
        %disp('Enlace sin perdidas por difraccion hR(k)<-0.6')
%         calculo_difr=1;
    elseif hR(k)>=-0.6 && hR(k)<=0.5
        %disp('Enlace con perdidas por difraccion hR(k)>=-0.6 && hR(k)<=0.5')
        n_perdidas=n_perdidas+1;
        max_perd_h_k(n_perdidas)=max_h_k(k);%posicion de la distancia de los max a calcular difraccion
    elseif hR(k)>=0.5
        %disp('No hay enlace no cumple h/R')
        n_perdidas=3;
        calculo_difr=0;
        Ld=0;
        return;
    end
%      calculo_difr=0;
%      Ld=0;
end
clear h;
if n_perdidas==2 || n_perdidas==1
    for k=1:length(max_perd_h_k)
        d1(k)=sqrt((td-perfil_intp_d(max_perd_h_k(k)))^2+(th-ppval(perfil_intp,perfil_intp_d(max_perd_h_k(k))))^2);
        d2(k)=sqrt((rd-perfil_intp_d(max_perd_h_k(k)))^2+(rh-ppval(perfil_intp,perfil_intp_d(max_perd_h_k(k))))^2);
        h(k)=ppval(perfil_intp,perfil_intp_d(max_perd_h_k(k)))-ppval(lin_vista,perfil_intp_d(max_perd_h_k(k)));
    end
    if n_perdidas==2
        do=sqrt((perfil_intp_d(max_perd_h_k(1))-perfil_intp_d(max_perd_h_k(2)))^2+(ppval(perfil_intp,perfil_intp_d(max_perd_h_k(1)))-ppval(perfil_intp,perfil_intp_d(max_perd_h_k(2))))^2);
    else do=1;
    end
    Ld=perdida_difraccion(f,d/1000,d1/1000,d2/1000,do/1000,h);
    calculo_difr=1;
    return
elseif n_perdidas>2
    %disp('No hay enlace P>2')
    calculo_difr=0;
    Ld=0;
    return;
elseif n_perdidas==0
    calculo_difr=1;
    Ld=0;
    return;
end