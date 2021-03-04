function [calculo_refl,Lb_refl]=reflexion(th,rh,f,d,tip_suelo,pol,lin_vista_refle,perfil_intp_d,k)

%% Linea de vista reflejada: Existe? SI->calculo perdidas, NO->no calculo nada
% if ~isempty(find((ppval(lin_vista_refle,perfil_intp_d(k:length(perfil_intp_d)))-perfil_intp_d(k:length(perfil_intp_d)))>0))
%     disp('No existe linea de vista reflejada')
% %     Lb_refl=0;
% %     calculo_refl=0;
% else
%     disp('Existe linea de vista reflejada')
% %     Lb_refl=perdi_reflexion(th,rh,f,d,tip_suelo,pol);
% %     calculo_refl=1;
% end

[calculo_refl,Lb_refl]=perdi_reflexion(th,rh,f,d/1000,tip_suelo,pol);
return;