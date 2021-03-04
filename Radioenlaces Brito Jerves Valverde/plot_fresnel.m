function plot_fresnel(rd,td,rh,th,perfil_intp_d,d,f)

%% Plot Fresnel
lin_vista=interp1([rd td],[rh th],'linear','pp');

R1=548.*sqrt((((perfil_intp_d)./1000).*((d-(perfil_intp_d))./1000))./(f.*(d./1000)));%rayo 1 de fresnel
%hold on
plot(perfil_intp_d,ppval(lin_vista,perfil_intp_d)-R1,'k');
plot(perfil_intp_d,ppval(lin_vista,perfil_intp_d)+R1,'k');
%hold off