% f=13; %en Ghz
% d=30; %en Km
% pol=1;%Polarizacion V(2) o H(1)
% at_ll=5;%Porcentaje de tiempo(atenuacion por lluvia)
%  p=7.5; %densidad vapor agua
        
function [A,Agas]=perdida_lluvia_gas(f,d,pol,at_ll,p)


if f>6 %Perdida pod lluvia f>6Ghz
    
    load('Atenuacion.mat');  
    
    for j=1:1:20

            if (f==data(j,1))
                %%%%%%%%%%%%%%%traer datos
            
                switch pol
                    case 1%pol horizontal
                        k=data(j,2);
                        alfa=data(j,4);
                    case 2%pol vertical
                        k=data(j,3);
                        alfa=data(j,5);
                     case 3% pol circular
                        k=((data(j,2))+(data(j,3)))/2;
                        alfa=((data(j,2)*data(j,4))+(data(j,3)*data(j,5)))/2*k;
%+((data(j,2))-(data(j,3))*(cos(n1))^2*cos()  
                end 
            elseif (f>data(j,1)&& f<data(j+1,1))
                    switch pol
                        case 1%pol horizontal
                            fm=data(j+1,1);
                            fmenor=data(j,1);
                            khmenor=data(j,2);
                            khm=data(j+1,2);
                            alfahmenor=data(j,4);
                            alfahm=data(j+1,4);
                             
                            p1=(log10(fm)-log10(fmenor))/(log10(fm)-log10(f));
                            p2=(log10(khm)-log10(khmenor));
                            k=10^((-p2/p1)+log10(khm));
                            
                            p3=alfahm-alfahmenor;
                            alfa=(-(p3/p1)+alfahm);
                           
                           
                        case 2%pol vertical
                                                      
                            fm=data(j+1,1);
                            fmenor=data(j,1);
                            kvmenor=data(j,3);
                            kvm=data(j+1,3);
                            alfavmenor=data(j,5);
                            alfavm=data(j+1,5);
                             
                            p1=(log10(fm)-log10(fmenor))/(log10(fm)-log10(f));
                            p2=(log10(kvm)-log10(kvmenor));
                            k=10^((-p2/p1)+log10(kvm));
                            
                            p3=alfavm-alfavmenor;
                            alfa=(-(p3/p1)+alfavm);    
                            
                       case 3% pol circular
                           %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                             fmh=data(j+1,1);
                            fmenorh=data(j,1);
                            kvmenorh=data(j,3);
                            kvmh=data(j+1,3);
                            alfavmenorh=data(j,5);
                            alfavmh=data(j+1,5);
                             
                            p1h=(log10(fmh)-log10(fmenorh))/(log10(fmh)-log10(f));
                            p2h=(log10(kvmh)-log10(kvmenorh));
                            kh=10^((-p2h/p1h)+log10(kvmh));
                            
                            p3h=alfavmh-alfavmenorh;
                            alfah=(-(p3h/p1h)+alfavmh);  
                            
                            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                            fmv=data(j+1,1);
                            fmenorv=data(j,1);
                            kvmenorv=data(j,3);
                            kvmv=data(j+1,3);
                            alfavmenorv=data(j,5);
                            alfavmv=data(j+1,5);
                             
                            p1v=(log10(fmv)-log10(fmenorv))/(log10(fmv)-log10(f));
                            p2v=(log10(kvmv)-log10(kvmenorv));
                            kv=10^((-p2v/p1v)+log10(kvmv));
                            
                            p3v=alfavmv-alfavmenorv;
                            alfav=(-(p3v/p1v)+alfavmv);    
                            
                            k=(kh+kv)/2;
                            alfa=((kh*alfah)+(kv*alfav))/2*k;                      
                    end
                    
            end
        end
    
     switch  at_ll
     case 1%1
         r=2;
         rho=k*(r^alfa);
         do=35*exp(-0.015*r);
         Lef=d/(1+(d/do));
         A=rho*Lef;
     case 2%0.3
         r=4;
         rho=k*(r^alfa);
         do=35*exp(-0.015*r);
         Lef=d/(1+(d/do));
         A=rho*Lef;
     case 3
         r=10;
         rho=k*(r^alfa);
         do=35*exp(-0.015*r);
         Lef=d/(1+(d/do));
         A=rho*Lef;
     case 4
         r=18;
         rho=k*(r^alfa);
         do=35*exp(-0.015*r);
         Lef=d/(1+(d/do));
         A=rho*Lef;
     case 5
         r=32;
         rho=k*(r^alfa);
         do=35*exp(-0.015*r);
         Lef=d/(1+(d/do));
         A=rho*Lef;
     case 6
         r=55;
         rho=k*(r^alfa);
         do=35*exp(-0.015*r);
         Lef=d/(1+(d/do));
         A=rho*Lef;
     case 7
         r=83;
         rho=k*(r^alfa);
         do=35*exp(-0.015*r);
         Lef=d/(1+(d/do));
         A=rho*Lef;
 end 
    
    
end


 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%perdidas por gas
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ro=(7.19*10^-3+6.09/(f^2+0.227)+4.81/((f-57)^2+1.5))*f^2*10^-3;
% 
% rw=(0.05+0.0021*p+3.5/((f-22.2)^2+8.5)+10.6/((f-183.3)^2+9)+8.9/((f-325.4)^2+26.3))*p*f^2*10^-4;
% 
% gasdB=ro+rw;

    if f>10 %Perdida por gases f>10Ghz
        ro=(7.19*10^-3+6.09/(f^2+0.227)+4.81/((f-57)^2+1.5))*f^2*10^-3;
        
        rw=(0.05+0.0021*p+3.5/((f-22.2)^2+8.5)+10.6/((f-183.3)^2+9)+8.9/((f-325.4)^2+26.3))*p*f^2*10^-4;
        
        Agas=(ro+rw)*d;
    else
        Agas=0;
        
    end
    