function h=altitude(lat,lon)
               % 1long    2lat
               %  i   tc   i  tc
global S03W079;% -79 -78  -2 -3     
global S03W080;% -80 -79  -2 -3
global S04W079;% -79 -78  -3 -4
global S04W080;% -80 -79  -3 -4

if -79.0004163197336<=lon && lon<=-78.0012489592065 && -2.99958368026647<=lat && lat<-2
    n=find(lon<=S03W079(:,1) & S03W079(:,2) <= lat,1);
    h=S03W079(n,3);
    return
end
if  -79.0004163197336>lon && lon>=-80.0004163197336 && -2.99958368026647<=lat && lat<-2
    if -79.0012489592065<lon
        h=2486;
        return
    end
    n=find(lon<=S03W080(:,1) & S03W080(:,2) <= lat,1);
    h=S03W080(n,3);
    return
end
if -79.0004163197336<=lon && lon<=-78.0012489592065 && -3.99958368026647<=lat && lat<-2.99958368026647
    n=find(lon<=S04W079(:,1) & S04W079(:,2) <= lat,1);
    h=S04W079(n,3);
    return
end
if  -79.0004163197336>lon && lon>=-80.0004163197336 && -3.99958368026647<=lat && lat<-2.99958368026647
    if -79.0012489592065<lon
        h=2819;
        return
    end
    n=find(lon<=S04W080(:,1) & S04W080(:,2) <= lat,1);
    h=S04W080(n,3);
    return
end
if lon>-78.0012489592065 || lat>=-2 || lon<-80.0004163197336 || lat<-3.99958368026647
    h=0;%No es Azuay
end