function Ld=perdida_difraccion(f,d,d1,d2,do,h)
% f en Ghz
%en Km distancia enlace
%d1 es dist.de la antena tx al osbtaculo
%d2 es dist.de la antena rx  al osbtaculo
%h altura osbtaculo
Ld=0;
if length(h)==2
    if h(1)<0 && h(2)<0
        for k=1:length(h)
            v(k)=abs(h(k))*(2.58*10^(-3))*sqrt((f*d)/(d1(k)*d2(k)));
            Ld1(k)=6.9+20*log10(sqrt((v(k)-0.1)^2+1)+v(k)-0.1);
        end
        Ld=sum(Ld1);
    elseif h(1)<0 && h(2)>0
        k=1;

        v1(k)=abs(h(k))*(2.58*10^(-3))*sqrt((f*d)/(d1(k)*d2(k)));
        v2(k)=abs(h(k))*(2.58*10^(-3))*sqrt((f*d)/(d1(k)*do));

        Ld1(k)=6.9+20*log10(sqrt((v1(k)-0.1)^2+1)+v1(k)-0.1);
        Ld2(k)=6.9+20*log10(sqrt((v2(k)-0.1)^2+1)+v2(k)-0.1);

        Ld=sum(Ld1)+sum(Ld2);
        %disp('entra')
    elseif h(1)>0 && h(2)<0
        k=2;

        v1(k)=abs(h(k))*(2.58*10^(-3))*sqrt((f*d)/(d1(k)*d2(k)));
        %v2(k)=abs(h(k))*(2.58*10^(-3))*sqrt((f*d)/(d1(k)*do));

        Ld1(k)=6.9+20*log10(sqrt((v1(k)-0.1)^2+1)+v1(k)-0.1);
        %Ld2(k)=6.9+20*log10(sqrt((v2(k)-0.1)^2+1)+v2(k)-0.1);

        Ld=sum(Ld1);%+sum(Ld2);
        % elseif h(1)>0 && h(2)>0
        %     k=1;
        %
        %     v1(k)=abs(h(k))*(2.58*10^(-3))*sqrt((f*d)/(d1(k)*d2(k)));
        %     v2(k)=abs(h(k))*(2.58*10^(-3))*sqrt((f*d)/(d1(k)*do));
        %
        %     Ld1(k)=6.9+20*log10(sqrt((v1(k)-0.1)^2+1)+v1(k)-0.1);
        %     Ld2(k)=6.9+20*log10(sqrt((v2(k)-0.1)^2+1)+v2(k)-0.1);
        %
        %     Ld=sum(Ld1)+sum(Ld2);
        %
    end
    return
elseif length(h)==1
    k=1;
    v1(k)=abs(h(k))*(2.58*10^(-3))*sqrt((f*d)/(d1(k)*d2(k)));
    Ld=6.9+20*log10(sqrt((v1(k)-0.1)^2+1)+v1(k)-0.1);
    return
else
    Ld=0;
    return
end
Ld=0;
return