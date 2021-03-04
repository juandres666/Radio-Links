    if (a>=0)&&(a<pi/4),        paso=92.493612435968075*cos(a)% distamcia diferencial q se divide la distancia del enlace
    elseif (a>=3*pi/4)&&(a<=pi),paso=92.493612435968075*cos(pi-a)
    end
    
    
        if (a>=pi/4)&&(a<pi/2),      paso=92.493612435968075*cos(pi/2-a)% distancia diferencial para paso de distancia del enlace
    elseif (a>=pi/2)&&(a<3*pi/4),paso=92.493612435968075*cos(a-pi/2)
    end