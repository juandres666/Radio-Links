function [calculo,lb]=perdi_reflexion(ht,hr,f,d,tip_suelo,pol)
%ht altura transmisor (mts)
%hr altura receptor (mts)
%f frecuencia (Mhz)
%d distancia enlace en (Km)
%tip_suelo tipo de suelo del 1 al 7
%pol  polarizacion (1)vertical (2)horizontal

k=4/3;
p=(2/sqrt(3))*sqrt((6.37*k*(ht+hr)+(d/2)^2));

if (ht>hr)
fhi=acos((12.74*k*(ht-hr)*d)/p^3);
%fhirad=(fhi*180)/pi
d1=p*cos((pi+fhi)/3)+((d)/2);
h_t=ht-((4*d1^2)/(51*k));
d2=d-d1;
elseif (ht<hr)
fhi=acos((12.74*k*(hr-ht)*d)/p^3);
d2=p*cos((pi+fhi)/3)+((d)/2);
d1=d-d2;
h_t=ht-((4*d1^2)/(51*k));
end

h_r=hr-((4*d2^2)/(51*k));
shi=(h_t+h_r)/d;
shilim=power(5400/f,1/3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%teoria de reflexion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if shi>shilim
    calculo=1;
    
   D=power(1+(5/(16*k))*(((d1)^2)*d2)/(d*h_t),-1/2);
   %D=((((d1)^2)*d2)/(d*h_t))
   Al=((2*h_t*h_r)/d)*0.001;
   A=(pi*(f*Al))/150;
   f=f;
switch tip_suelo
    case 1%Agua Salada
        if f<1e3
            cond=5;
        elseif f>1e5;
            cond=70;
        else
            x=[1e3 2e3 3e3 4e3 5e3 6e3 7e3 8e3 9e3 1e4 2e4 3e4 4e4 5e4 7e4 9e4 1e5];
            y=[5 6 7 8.5 9 11 14 15 16 17.5 34.5 50 58 63 68 70 70 ];
            pp= interp1(x,y,'spline','pp');
            cond=ppval(pp,f);
        end

        if f<3e3;
            er=70;
        elseif f>2e5;
            er=7;
        else
            x1=[3e3 4e3 5e3 6e3 7e3 8e3 9e3 1e4 2e4 3e4 4e4 5e4 6e4 7e4 8e4 9e4 1e5 2e5];
            y1=[70 69 65 60 59 56 55 50 30 20 15 12 10 9 8.5 8 7.5 7];
            pp= interp1(x1,y1,'spline','pp');
            er=ppval(pp,f);
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    case 2%Suelo Humedo
        if f<3e1;
            cond=10^-2;
        elseif f>1e5;
            cond=18;
        else
            x=[2e1 8e1 1e2 3e2 5e2 7e2 1e3 2e3 4e3 7e3 1e4 2e4 3e4 6e4 1e5];
            y=[1e-1 1.5e-2 1.8e-2 3e-2 5e-2 1e-1 1.5e-1 4e-1 1 2 3 5.5 10 15 18];
            pp= interp1(x,y,'spline','pp');
            cond=ppval(pp,f);
        end
    
        if f<1e3;
            er=30;
        elseif f>1e5;
            er=4;
        else
            x1=[1e3 2e3 4e3 9e3 2e4 4e4 6e4 9e4 1e5];
            y1=[20 29 22 14 7 4.75 4.25 4 4];
            pp= interp1(x1,y1,'spline','pp');
            er=ppval(pp,f);
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	case 3%Agua Dulce
        if f<2e1;
            cond=3e-3;
        elseif f>1e5;
            cond=70;
        else
            x=[2e1 6e1 9e1 1e2 2e2 4e2 7e2 2e3 5e3 8e3 1e4 2e4 3e4 5e4 7e4 9e4 1e5];
            y=[3e-3 4e-3 5e-3 5.25e-3 1e-2 3e-2 9e-2 6e-1 4 10 14 34.5 50 64 68 70 70];
            pp= interp1(x,y,'spline','pp');
            cond=ppval(pp,f);
        end
    
        if f<7e3;
            er=80;
        elseif f>1e5;
            er=7;
        else
            x1=[7e3 9e3 1e4 2e4 4e4 5e4 7e4 8e4 9e4 1e5 2e5];
            y1=[80 75 72.5 45 19 15 9 8.5 8 7.5 7];
            pp= interp1(x1,y1,'spline','pp');
            er=ppval(pp,f);
        end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
	case 4%Suelo Moderadamente Seco
        if f<3e1;
            cond=1e-3;
        elseif f>1e5;
            cond=18;
        else
            x=[3e1 5e1 8e1 1e2 2e2 3e2 6e2 9e2 4e3 7e3 1e4 2e4 3e4 4e4 7e4 1e5];
            y=[1e-3 1.2e-3 1.5e-3 1.75e-3 3.5e-3 6e-3 1.5e-2 3e-2 4e-1 1 1.5 4.3 7 10 15 18];
            pp= interp1(x,y,'spline','pp');
            cond=ppval(pp,f);
        end
    
        if f<4e3;
            er=15;
        elseif f>1e5;
            er=4;
        else
            x1=[3e3 6e3 1e4 2e4 3e4 5e4 7e4 9e4 1e5];
            y1=[14 14 12.5 7 5.5 4.5 4 4 4];
            pp= interp1(x1,y1,'spline','pp');
            er=ppval(pp,f);
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
	case 5%Suelo muy Seco
        if f<6e2;
            cond=1e-4;
        elseif f>1e5;
            cond=1;
        else
            x=[6e2 8e2 1e3 1.5e3 2e3 3e3 4e3 5e3 8e3 1e4 1.5e4 2e4 3e4 4e4 6e4 8e4 1e5];
            y=[1e-4 1.2e-4 1.5e-4 3e-4 7e-4 2.5e-3 5.5e-3 9.5e-3 3e-2 4.5e-2 1e-1 1.85e-1 3.5e-1 5.4e-1 7.5e-1 9e-1 1];
            pp= interp1(x,y,'spline','pp');
            cond=ppval(pp,f);
        end
        er=3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%       
	case 6%Agua Pura
        if f<9e0;
            cond=1.8e-5;
        elseif f>1e5;
            cond=70;
        else
            x=[9e0 2e1 4e1 7e1 2e2 7e2 2e3 5e3 8e3 1e4 2e4 3e4 5e4 6e4 8e4 1e5];
            y=[1.8e-5 8e-5 3e-4 9e-4 7.5e-3 9e-2 7e-1 4 10 15 35 49 63 65 70 70];
            pp= interp1(x,y,'spline','pp');
            cond=ppval(pp,f);
        end
    
        if f<7e3;
            er=80;
        elseif f>1e5;
            er=7;
        else
            x1=[7e3 9e3 1e4 2e4 4e4 5e4 7e4 8e4 9e4 1e5 2e5];
            y1=[80 75 72.5 45 19 15 9 8.5 8 7.5 7];
            pp= interp1(x1,y1,'spline','pp');
            er=ppval(pp,f);
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%       
	case 7%Hielo
        if f>4e4;
            cond=2e-2;
        else
            x=[1e-2 2e-2 6e-2 2e-1 5e-1 1 3 4 2e1 4e1 5e1 8e1 1e2 2e2 4e2 6e2 9e2 2e3 4e3 5e3 7e3 8e3 1e4 2e4 3e4 4e4];
            y=[2.4e-5 2.5e-5 3e-5 3.5e-5 4e-5 4.5e-5 5.5e-5 6e-5 1e-4 1.4e-4 1.5e-4 1.75e-4 2e-4 3e-4 4.5e-4 5.75e-4 7.5e-4 1.5e-3 2.5e-3 3e-3 4.2e-3 4.5e-3 5.5e-3 1.1e-2 1.5e-2 2e-2];
            pp= interp1(x,y,'spline','pp');
            cond=ppval(pp,f);
        end
    
        if f<1e-2;
            er=27;
        elseif f>1e-1;
            er=3;
        else
            x1=[1e-2 1.5e-2 2e-2 3e-2 4e-2 5e-2 6e-2 7e-2 8e-2 9e-2 1e-1];
            y1=[27 20 15 10 6.5 5.5 4.5 3.7 3.5 3.2 3];
            pp= interp1(x1,y1,'spline','pp');
            er=ppval(pp,f);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(handles.conductividad,'string',cond);
% set(handles.permitividad,'string',er);
% set(handles.anginc,'string',shi);
% set(handles.anglim,'string',shilim);
    
lamda=(300)/f;
 iu=2;
switch pol
    case 1%Polarizacion Vertical
         %eo=60-j*((60*11*3e8)/f*1e-6)
      eo=er-j*((60*cond*3e8)/f*1e-6);
      

        divisor=eo*sin((pi*iu)/180)+(eo-(cos(iu))^2)^(1/2);
        rv1=    eo*sin((pi*iu)/180)-(eo-(cos(iu))^2)^(1/2);
        rv=rv1/divisor;
       t=(imag(rv)/real(rv));
 
       B=((180-(atan(t)*180)/pi)*pi)/180;
      
       R=sqrt((imag(rv))^2+(real(rv))^2);

      e=sqrt(1+(D*R^2)+2*D*R*cos(A+B));
     
%         lbf=32.45+20*log10(f)+20*log10(d)
%         lb=lbf+20*log10(1/e)     
            lb=20*log10(1/e);
     
    case 2%Polarizacion horizontal
       
        eo=er-j*((60*cond*3e8)/f*1e-6);
        iu=2;
        divisor=sin((pi*iu)/180)+(eo-(cos(iu))^2)^(1/2);
        rv1=    sin((pi*iu)/180)-(eo-(cos(iu))^2)^(1/2);
        rv=rv1/divisor;
       t=(imag(rv)/real(rv));
       B=((180-(atan(t)*180)/pi)*pi)/180;
      
       R=sqrt((imag(rv))^2+(real(rv))^2);

      e=sqrt(1+(D*R^2)+2*D*R*cos(A+B));
        
        
       % lbf=32.45+20*log10(f)+20*log10(d)
        %lb=lbf+20*log10(1/e)
        lb=20*log10(1/e);
end
else  
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%onda onda directa%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    calculo=0;
    lb=0;
    
end