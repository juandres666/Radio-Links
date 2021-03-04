function varargout = Temp_Ruido_Sisitema(varargin)
% TEMP_RUIDO_SISITEMA M-file for Temp_Ruido_Sisitema.fig
%      TEMP_RUIDO_SISITEMA, by itself, creates a new TEMP_RUIDO_SISITEMA or raises the existing
%      singleton*.
%
%      H = TEMP_RUIDO_SISITEMA returns the handle to a new TEMP_RUIDO_SISITEMA or the handle to
%      the existing singleton*.
%
%      TEMP_RUIDO_SISITEMA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEMP_RUIDO_SISITEMA.M with the given input arguments.
%
%      TEMP_RUIDO_SISITEMA('Property','Value',...) creates a new TEMP_RUIDO_SISITEMA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Temp_Ruido_Sisitema_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Temp_Ruido_Sisitema_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Temp_Ruido_Sisitema

% Last Modified by GUIDE v2.5 16-Jul-2009 09:32:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Temp_Ruido_Sisitema_OpeningFcn, ...
                   'gui_OutputFcn',  @Temp_Ruido_Sisitema_OutputFcn, ...
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


% --- Executes just before Temp_Ruido_Sisitema is made visible.
function Temp_Ruido_Sisitema_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Temp_Ruido_Sisitema (see VARARGIN)

% Choose default command line output for Temp_Ruido_Sisitema
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Temp_Ruido_Sisitema wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Temp_Ruido_Sisitema_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global TR;

axes(handles.axes1);
background = imread('Tem ruido.jpg');
axis off;
imshow(background);

axes(handles.axes4);
background = imread('temp ruido1.jpg');
axis off;
imshow(background);


    set(handles.te_r,'Enable','Off');
    set(handles.Tin_r,'Enable','Off');
    set(handles.TRF_r,'Enable','Off');
    set(handles.Tm_r,'Enable','Off');
    set(handles.TIF_r,'Enable','Off');
    set(handles.GRF_r,'Enable','Off');
    set(handles.Gm_r,'Enable','Off');
    set(handles.GIF_r,'Enable','Off');

if TR==1
    set(handles.te_r,'Enable','On');
    set(handles.Tin_r,'Enable','On');
    set(handles.TRF_r,'Enable','On');
    set(handles.Tm_r,'Enable','On');
    set(handles.TIF_r,'Enable','On');
    set(handles.GRF_r,'Enable','On');
    set(handles.Gm_r,'Enable','On');
    set(handles.GIF_r,'Enable','On');
end


function TRF_Callback(hObject, eventdata, handles)
% hObject    handle to TRF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TRF as text
%        str2double(get(hObject,'String')) returns contents of TRF as a double


% --- Executes during object creation, after setting all properties.
function TRF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TRF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GRF_Callback(hObject, eventdata, handles)
% hObject    handle to GRF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GRF as text
%        str2double(get(hObject,'String')) returns contents of GRF as a double


% --- Executes during object creation, after setting all properties.
function GRF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GRF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TIF_Callback(hObject, eventdata, handles)
% hObject    handle to TIF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TIF as text
%        str2double(get(hObject,'String')) returns contents of TIF as a double


% --- Executes during object creation, after setting all properties.
function TIF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TIF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GIF_Callback(hObject, eventdata, handles)
% hObject    handle to GIF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GIF as text
%        str2double(get(hObject,'String')) returns contents of GIF as a double


% --- Executes during object creation, after setting all properties.
function GIF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GIF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tm_Callback(hObject, eventdata, handles)
% hObject    handle to Tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tm as text
%        str2double(get(hObject,'String')) returns contents of Tm as a double


% --- Executes during object creation, after setting all properties.
function Tm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Gm_Callback(hObject, eventdata, handles)
% hObject    handle to Gm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Gm as text
%        str2double(get(hObject,'String')) returns contents of Gm as a double


% --- Executes during object creation, after setting all properties.
function Gm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Gm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Te_Callback(hObject, eventdata, handles)
% hObject    handle to Te (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Te as text
%        str2double(get(hObject,'String')) returns contents of Te as a double


% --- Executes during object creation, after setting all properties.
function Te_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Te (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tin_Callback(hObject, eventdata, handles)
% hObject    handle to Tin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tin as text
%        str2double(get(hObject,'String')) returns contents of Tin as a double


% --- Executes during object creation, after setting all properties.
function Tin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in Obtener.
function Obtener_Callback(hObject, eventdata, handles)
% hObject    handle to Obtener (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%
global te;
global bandera;
global TR;
global te_r;

Tin=str2double(get(handles.Tin,'string'));
TRF=str2double(get(handles.TRF,'string'));
Tm=str2double(get(handles.Tm,'string'));
TIF=str2double(get(handles.TIF,'string'));
GRF=str2double(get(handles.GRF,'string'));
Gm=str2double(get(handles.Gm,'string'));
GIF=str2double(get(handles.GIF,'string'));

GRF_v=10^(GRF/10);
Gm_v=10^(Gm/10);
%GIF_v=10^(GIF/10);

te=Tin+TRF+(Tm/GRF_v)+(TIF/(Gm_v*GRF_v));
set(handles.te,'string',te);

%%
%%%%%%%%%%% Cuando hay un Tx y un Rx %%%%%%%%%%
if TR==1
    Tin_r=str2double(get(handles.Tin_r,'string'));
    TRF_r=str2double(get(handles.TRF_r,'string'));
    Tm_r=str2double(get(handles.Tm_r,'string'));
    TIF_r=str2double(get(handles.TIF_r,'string'));
    GRF_r=str2double(get(handles.GRF_r,'string'));
    Gm_r=str2double(get(handles.Gm_r,'string'));
    GIF_r=str2double(get(handles.GIF_r,'string'));

    GRF_r_v=10^(GRF_r/10);
    Gm_r_v=10^(Gm_r/10);
    %GIF_v=10^(GIF/10);

    te_r=Tin_r+TRF_r+(Tm_r/GRF_r_v)+(TIF_r/(Gm_r_v*GRF_r_v));
    set(handles.te_r,'string',te_r);
end

%%

function te_Callback(hObject, eventdata, handles)
% hObject    handle to te (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of te as text
%        str2double(get(hObject,'String')) returns contents of te as a double


% --- Executes during object creation, after setting all properties.
function te_CreateFcn(hObject, eventdata, handles)
% hObject    handle to te (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in Regresar.
function Regresar_Callback(hObject, eventdata, handles)
% hObject    handle to Regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%
global bandera;
Distn_Acimt;
bandera=1;
%%



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function TRF_r_Callback(hObject, eventdata, handles)
% hObject    handle to TRF_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TRF_r as text
%        str2double(get(hObject,'String')) returns contents of TRF_r as a double


% --- Executes during object creation, after setting all properties.
function TRF_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TRF_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GRF_r_Callback(hObject, eventdata, handles)
% hObject    handle to GRF_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GRF_r as text
%        str2double(get(hObject,'String')) returns contents of GRF_r as a double


% --- Executes during object creation, after setting all properties.
function GRF_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GRF_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TIF_r_Callback(hObject, eventdata, handles)
% hObject    handle to TIF_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TIF_r as text
%        str2double(get(hObject,'String')) returns contents of TIF_r as a double


% --- Executes during object creation, after setting all properties.
function TIF_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TIF_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GIF_r_Callback(hObject, eventdata, handles)
% hObject    handle to GIF_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GIF_r as text
%        str2double(get(hObject,'String')) returns contents of GIF_r as a double


% --- Executes during object creation, after setting all properties.
function GIF_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GIF_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tm_r_Callback(hObject, eventdata, handles)
% hObject    handle to Tm_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tm_r as text
%        str2double(get(hObject,'String')) returns contents of Tm_r as a double


% --- Executes during object creation, after setting all properties.
function Tm_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tm_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Gm_r_Callback(hObject, eventdata, handles)
% hObject    handle to Gm_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Gm_r as text
%        str2double(get(hObject,'String')) returns contents of Gm_r as a double


% --- Executes during object creation, after setting all properties.
function Gm_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Gm_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function te_r_Callback(hObject, eventdata, handles)
% hObject    handle to te_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of te_r as text
%        str2double(get(hObject,'String')) returns contents of te_r as a double


% --- Executes during object creation, after setting all properties.
function te_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to te_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tin_r_Callback(hObject, eventdata, handles)
% hObject    handle to Tin_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tin_r as text
%        str2double(get(hObject,'String')) returns contents of Tin_r as a double


% --- Executes during object creation, after setting all properties.
function Tin_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tin_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


