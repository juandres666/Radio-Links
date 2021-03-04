function [con,per]=con_per(num)
switch num
    case 1% Agua Del Mar, Salinidad Baja
        con=1;
        per=80;
    case 2% Agua Del Mar, Salinidad Media
        con=5;
        per=70;
    case 3% Agua Dulce
        con=3*10^-3;
        per=80;
    case 4% Tierra
        con=3*10^-2;
        per=40;
    case 5% Tierra Humeda
        con=10^-2;
        per=30;
    case 6% Tierra
        con=3*10^-3;
        per=22;
    case 7% Tierra Moderadamente Seca
        con=10^-3;
        per=15;
    case 8% Tierra Seca
        con=3*10^-4;
        per=7;
    case 9% Tierra Muy Seca
        con=10^-4;
        per=3;
    case 10% Hielo De Agua Dulce   -1ªC
        con=3*10^-5;
        per=3;
    case 11% Hielo De Agua Dulce -10ªC
        con=-10^-5;
        per=3;
end