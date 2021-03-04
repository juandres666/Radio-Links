function [max_h,max_h_d,max_h_k]=alturas_max(perfil_intp,perfil_intp_d)

max_h(1)=0;
m=1;
for k=2:length(perfil_intp_d)-1
    if ppval(perfil_intp,perfil_intp_d(k))>ppval(perfil_intp,perfil_intp_d(k-1))%altura actual mayor al anterior
        if ppval(perfil_intp,perfil_intp_d(k+1))<ppval(perfil_intp,perfil_intp_d(k))%altura actual menor a la siguiente
            max_h(m)=ppval(perfil_intp,perfil_intp_d(k));%altura de los picos maximos
            max_h_d(m)=perfil_intp_d(k);%distancia de los picos maximos
            max_h_k(m)=k;
            m=m+1;
        end
    end
end

% if m==1
%     max_h(1)=1;
%     max_h(2)=1;
%     max_h_d(1)=1;
%     max_h_d(2)=1;
%     max_h_k(1)=1;
%     ax_h_k(2)=1;
% end