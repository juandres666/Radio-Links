function [m_x,m_y]=perfil_grados(d,f_x,f_y,theta)
% f_x   antena fija x
% f_y   antena fija y
% theta angulo del perfil
% m_x   movil fija x
% m_y   movil fija y

x=d*cos(theta);
y=d*sin(theta);

 m_x=f_x+x;
 m_y=f_y+y;
 
% 
% if theta<=pi/2
%     m_x=x+f_x;
%     m_y=y+f_y;
%     return
% elseif theta>pi/2 && theta<=pi
%     m_x=f_x-x;
%     m_y=y+f_y;
%     return
% elseif theta>pi && theta<=3*pi/2
%     m_x=f_x-x;
%     m_y=f_y-y;
%     return
% elseif theta>3*pi/2 && theta<=2*pi
%     m_x=x+f_x;
%     m_y=f_y-y;
%     return
% end
return