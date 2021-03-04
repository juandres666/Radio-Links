function [perfil_d,perfil_h]=perfiles(t_x,t_y,r_x,r_y)
%% Crea perfiles de altura y distancia
% t_x Tx en x
% t_y Tx en y
% r_x Rx en x
% r_y Rx en y

d=sqrt((t_x-r_x)^2+(t_y-r_y)^2);

a=atan((r_y-t_y)/(r_x-t_x))% angulo del perfil

if a<0,a=a+pi;end% solo angulos positivos

%if isnan(a) %Si el punto Rx = Tx
if ((a>=0)&&(a<pi/4))||((a>=3*pi/4)&&(a<=pi)) % barrido x
    paso=abs(92.493612435968075*cos(a));% distancia diferencial para paso de distancia del enlace
    
    pp=interp1([t_x r_x],[t_y r_y],'linear','pp');
    if t_x>r_x%desde r hacia t
        %disp('x')
        x_i=r_x:paso:t_x;
    elseif t_x<r_x%desde t hacia r
        %disp('x*')
        x_i=t_x:paso:r_x;
    end
    y_i=ppval(pp,x_i);
    %rapidez??->perfil=zeros([length(x_i) 3]);perfil_h=zeros([1 length(x_i)]);
    for k=1:1:length(x_i)
        [perfil(k,1),perfil(k,2)]=utm2deg(x_i(k),y_i(k),'17 M');
        if t_x<r_x%desde t hacia r                      %siempre el perfil es Tx-Rx
            perfil_h(k)=altitude(perfil(k,1),perfil(k,2));
        elseif t_x>r_x%desde r hacia t
            perfil_h(length(x_i)+1-k)=altitude(perfil(k,1),perfil(k,2));
        end
    end
elseif (a>=pi/4)&&(a<3*pi/4) % barrido y
    paso=abs(92.493612435968075*cos(pi/2-a));% distancia diferencial para paso de distancia del enlace
    
    pp=interp1([t_y r_y],[t_x r_x],'linear','pp');
    if t_y>r_y%desde r hacia t
        %disp('y')
        y_i=r_y:paso:t_y;
    elseif t_y<r_y%desde t hacia r
        %disp('y*')
        y_i=t_y:paso:r_y;
    end

    x_i=ppval(pp,y_i);
    
    for k=1:1:length(y_i)
        [perfil(k,1),perfil(k,2)]=utm2deg(x_i(k),y_i(k),'17 M');
        if t_y<r_y%desde t hacia r                    %siempre el perfil es Tx-Rx
            perfil_h(k)=altitude(perfil(k,1),perfil(k,2));
        else t_y>r_y%desde r hacia t
            perfil_h(length(y_i)+1-k)=altitude(perfil(k,1),perfil(k,2));
        end
    end
end
perfil_d=0:d/(length(perfil_h)-1):d;% crea perfil de distancias