function [lin_vista_refle,k]=plot_refl(f,d,td,th,rd,rh,perfil_intp,perfil_intp_d)

%% Reflejado:
[d1,d2,calculo]=perd_reflexion(f,d/1000,th,rh);
lin_refle=interp1([td perfil_intp_d(find(perfil_intp_d>d1*1000,1))],[th ppval(perfil_intp,perfil_intp_d(find(perfil_intp_d>d1*1000,1)))],'linear','pp');
for k=1:find(perfil_intp_d>d1*1000,1)

    if ppval(lin_refle,perfil_intp_d(k))<=ppval(perfil_intp,perfil_intp_d(k))%perfil_h(k)
        plot(perfil_intp_d(1:k),ppval(lin_refle,perfil_intp_d(1:k)),'--r')

        %%Linea de vista reflejada:Interpola  y plotea
        lin_vista_refle=interp1([perfil_intp_d(k) rd],[ppval(perfil_intp,perfil_intp_d(k)) rh],'linear','pp');%ppval(perfil_intp,perfil_intp_d(k-1)))
        plot(perfil_intp_d(k:length(perfil_intp_d)),ppval(lin_vista_refle,perfil_intp_d(k:length(perfil_intp_d))),'--r');% o sino: line([rd td],[rh th],'LineWidth',1,'Color',[1 0 0]);%linea directa
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        break;
    end
end
%%%