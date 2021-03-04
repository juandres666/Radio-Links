function [d1,d2,calculo]=perd_reflexion(f,d,ht,hr)
%f  en Mhz
%d  en Km distancia enlace
%ht altura corregida de la antena
%hr altura corregida de la antena

k=4/3;p=(2/sqrt(3))*sqrt(6.37*k*(ht+hr)+(d/2)^2);
if 4.1*(sqrt(ht)+sqrt(hr))>d   %dist.Visibilidad mayor dist. enlace
    if (ht>hr)
        fhi=acos((12.74*k*(ht-hr)*d)/p^3);
        d1=p*cos((pi+fhi)/3)+d/2;
        h_t=ht-((4*d1^2)/(51*k));
        d2=d-d1;

        h_r=hr-((4*d2^2)/(51*k));
        shi=(h_t+h_r)/d;
        shilim=power(5400/f,1/3);
        if shi>shilim
            calculo=1;
            return
        else
            disp('no se calcula perdida por reflexion')
            calculo=0;
            return
        end
    elseif (ht<hr)
        fhi=acos((12.74*k*(hr-ht)*d)/p^3);
        d2=p*cos((pi+fhi)/3)+d/2;
        d1=d-d2;
        h_t=ht-((4*d1^2)/(51*k));

        h_r=hr-((4*d2^2)/(51*k));
        shi=(h_t+h_r)/d;
        shilim=power(5400/f,1/3);
        if shi>shilim
            calculo=1;
            return
        else
            disp('no se calcula perdida por reflexion')
            calculo=0;
            d1=0
            d2=0;
            return
        end
    end
else
    disp('no hay perdida por reflexion')
    calculo=0;
    d1=0;
    d2=0
end