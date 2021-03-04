function varargout = A_cobertura(varargin)
% A_COBERTURA M-file for A_cobertura.fig
%      A_COBERTURA, by itself, creates a new A_COBERTURA or raises the existing
%      singleton*.
%
%      H = A_COBERTURA returns the handle to a new A_COBERTURA or the handle to
%      the existing singleton*.
%
%      A_COBERTURA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in A_COBERTURA.M with the given input arguments.
%
%      A_COBERTURA('Property','Value',...) creates a new A_COBERTURA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before A_cobertura_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to A_cobertura_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help A_cobertura

% Last Modified by GUIDE v2.5 20-Jul-2009 08:14:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @A_cobertura_OpeningFcn, ...
                   'gui_OutputFcn',  @A_cobertura_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before A_cobertura is made visible.
function A_cobertura_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to A_cobertura (see VARARGIN)

% Choose default command line output for A_cobertura
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes A_cobertura wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = A_cobertura_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global S03W079;
global S03W080;
global S04W079;
global S04W080;
load('AzuayGEO.mat');

global f_x;
global f_y;
global f_h;
global f_P;
global f_Ga;
global f_ca;
global f_cl;
global f_cp;

global m_snstv;
global f;
global pol;
global tip_suelo;
global theta_dif;
global d_max;
global d_diff;

%% Datos estacion fija
% f_lat=dms2degrees([-02 20 44.38]);% F Latitud (X)     -02 48 46.62
% f_lon=dms2degrees([-78 30 45.88]);% F Longitud(Y)    -78 54 03
% [f_x,f_y,utmzone]=deg2utm(f_lat,f_lon);
% f_h=50;%altura antena
% 
% f_P=5000;%dB
% f_Ga=15.65;
% f_ca=0.1;%F cable atenuacion*m dB/m
% f_cl=20;%F cable longitud m
% f_cp=f_ca*f_cl;%F cable atenuación dB

%% Datos estacion movil
m_h=1.5;% Altura de la antena receptora

m_P=1;
m_Ga=0;
m_ca=0.1;
m_cl=0;
m_cp=m_ca*m_cl;%Tx cable atenuación dB

% m_snstv=38.5;%sensitividad dBmW
% %% Datos Sistema
% f=400;%en Mhz
% pol=1;%polarización 1H  2V
% tip_suelo=4;
% 
% %% Datos
% theta_dif=30;
 theta_dif=theta_dif*pi/180;
% 
% d_max=20;%d max de analisis en Km
 d_max=d_max*1000;%dmax en m
% 
% d_diff=2;%d diferencial en km
d_diff=d_diff*1000;%d_diff en m
%% 
h=waitbar(0,'Espere, por favor...');
m=0;
for a=0:theta_dif:359*pi/180
    waitbar(a/(359*pi/180));
    m=m+1;
    n=0;
    o=0;
    for l=d_diff:d_diff:d_max
        [m_x,m_y]=perfil_grados(l,f_x,f_y,a);%[m_x,m_y]=perfil_grados(d,f_x,f_y,theta)
        
        [perfil_intp,perfil_intp_d,rd, linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil_fm(f_x,f_y,f_h,f_P,f_Ga,f_ca,f_cl, m_x,m_y,m_h,m_P,m_Ga,m_ca,m_cl,m_snstv,f,pol,tip_suelo,499,0);
        
        if enlace_pr==0%pts negros
            n=n+1;
            pts_bk(m,n)=rd;
        else
            o=o+1;
            pts_wh(m,o)=rd;
        end
    end
%     [perfil_intp,perfil_intp_d,rd, linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil_fm(f_x,f_y,f_h,f_P,f_Ga,f_ca,f_cl, m_x,m_y,m_h,m_P,m_Ga,m_ca,m_cl,m_snstv, f,pol,tip_suelo,   499, 1);
%     hold on
%     tam=size(pts_bk);
%     for a=1:1:tam(2)
%         if pts_bk(m,a)~=0
%             plot(pts_bk(m,a),ppval(perfil_intp,pts_bk(m,a)),'r*')
%         end
%     end
%     hold off
end

%% Area de cobertura
close(h);

[X,Y]=meshgrid(f_x-d_max:d_diff:f_x+d_max,f_y-d_max:d_diff:f_y+d_max)
x_tam=size(X);
for i=1:x_tam(2)
    for j=1:length(Y)
        [x_g,y_g]=utm2deg(X(i,j),Y(i,j),'17 M');
        Z(i,j)=altitude(x_g,y_g);
    end
end 

X=X-f_x;
Y=Y-f_y;


[C,h]=contour(X./1000,Y./1000,Z,'b');
shading interp;
colormap cool;
hold on;
set(h,'ShowText','on');

%% plot enlace area de cobertura
linea(1)=max(pts_wh(length(pts_wh),:));
tam=size(pts_wh);
for m=1:length(pts_wh)
    linea(m+1)=max(pts_wh(m,:));
end

m=0;
for a=0:theta_dif:360*pi/180
    m=m+1;
    [x_(m),y_(m)] = pol2cart(a,linea(m));
    
end
plot(x_./1000,y_./1000,'r','LineWidth',4);

%% plot pnts de sombra
tam=size(pts_bk);
for m=1:tam(1)
    for n=1:tam(2)
    [x_1,y_1] = pol2cart(m*theta_dif,pts_bk(m,n));
    plot(x_1./1000,y_1./1000,'xg','LineWidth',2);
    end
end

%% plot antena fija
plot(0,0,'-mo','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63],'MarkerSize',12)% antena fija

xlabel('X (Km) *lat');
ylabel('Y (Km) *lon');


% --- Executes on button press in zoom.
function zoom_Callback(hObject, eventdata, handles)
% hObject    handle to zoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zoom on;

