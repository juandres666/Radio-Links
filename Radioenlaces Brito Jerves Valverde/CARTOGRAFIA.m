function varargout = CARTOGRAFIA(varargin)
% CARTOGRAFIA M-file for CARTOGRAFIA.fig
%      CARTOGRAFIA, by itself, creates a new CARTOGRAFIA or raises the existing
%      singleton*.
%
%      H = CARTOGRAFIA returns the handle to a new CARTOGRAFIA or the handle to
%      the existing singleton*.
%
%      CARTOGRAFIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CARTOGRAFIA.M with the given input arguments.
%
%      CARTOGRAFIA('Property','Value',...) creates a new CARTOGRAFIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CARTOGRAFIA_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CARTOGRAFIA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CARTOGRAFIA

% Last Modified by GUIDE v2.5 20-Jul-2009 03:09:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CARTOGRAFIA_OpeningFcn, ...
                   'gui_OutputFcn',  @CARTOGRAFIA_OutputFcn, ...
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


% --- Executes just before CARTOGRAFIA is made visible.
function CARTOGRAFIA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CARTOGRAFIA (see VARARGIN)

% Choose default command line output for CARTOGRAFIA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CARTOGRAFIA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


%% --- Outputs from this function are returned to the command line.
function varargout = CARTOGRAFIA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global f_x;
global f_y;

%% datos iniciales
da=1.000;%analisis cada da Km
da=da*1000;%da en mts

d=20;%distancia en Km
d=d*1000;%d en mts

%% Calculos
[X,Y]  =meshgrid(f_x-d:da:f_x+d,f_y-d:da:f_y+d);
x_tam=size(X);
for i=1:x_tam(2)
    for j=1:length(Y)
        [x_g,y_g]=utm2deg(X(i,j),Y(i,j),'17 M');
        Z(i,j)=altitude(x_g,y_g);
    end
end 
%% estacion fija en el origen
X=X-f_x;
Y=Y-f_y;

%% Plot 3D y curvas de nivel sin interpolacion
surfl(X./1000,Y./1000,Z);
shading interp;
colormap(gray);
hold on;
xlabel('X (Km) *lat');
ylabel('Y (Km) *lon');
zlabel('Altura (m)');

%%%
[C,h]=contour(X./1000,Y./1000,Z,'b');
shading interp;
set(h,'ShowText','on')
%%%
hold off



%%
% --- Executes on button press in ZOOM.
function ZOOM_Callback(hObject, eventdata, handles)
% hObject    handle to ZOOM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

zoom on;


% --- Executes on button press in ROTAR.
function ROTAR_Callback(hObject, eventdata, handles)
% hObject    handle to ROTAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

rotate3d on;
