% EdB=ITU368(f,con,per,d)
% ITU368.m Produces P368 UIT-R with GRWAVE software
%    f   = Frequency in MHz
%    con = Condutivity (S/m) of the terrain
%    per = Permitivity
%    d   = Distance (Km) where the field needs to be calculated
function EdB=ITU368(f,con,per,d)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% By Juan Andrés Valverde 20/06/2009 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HTT=0; %Effective height of the Transmitter (m)
HRR=0; %Effective height of the Receiver (m)
pol=1; %Polarization (1 for vertical and 2 for horizontal)

dmin=d-1;%are required but not used, and take values next to dmin
dstep=1; %are required but not used, and take values next to dmin

fid=fopen('data.inp','w');%open or create data.inp for writing
fprintf(fid,'HTT %f\nHRR %f\nIPOLRN %f\nFREQ %f\nSIGMA %f\nEPSLON %f\ndmin %e\ndmax %e\ndstep %f\ngo\nstop',HTT,HRR,pol,f,con,per,dmin,d,dstep);
fclose(fid);

[ergrw,res]=system('grwave<data.inp>data.out');%grwave system callback
fid=fopen('data.out','r');%open data.out for reading
                      %1248 = number of chars of the heter
fseek(fid,1248,'bof');%put the pointer ndatos chars after the begining of the file
a=fscanf(fid,'%f %f %f',[3 1]);%reading row
if a(1,1)~=d
                          %1315 = number of chars of the heter
    fseek(fid,1315,'bof');%put the pointer ndatos chars after the begining of the file
    a=fscanf(fid,'%f %f %f',[3 1]);%reading row
end
fclose(fid);%close data.out
if all(size(a)<=2)
    EdB=NaN;
else
    EdB=a(2,1);%data required is the second element of vector a
end