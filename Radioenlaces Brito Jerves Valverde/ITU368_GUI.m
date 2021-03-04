function varargout = ITU368_GUI(varargin)
% ITU368_GUI M-file for ITU368_GUI.fig
%      ITU368_GUI, by itself, creates a new ITU368_GUI or raises the existing
%      singleton*.
%
%      H = ITU368_GUI returns the handle to a new ITU368_GUI or the handle to
%      the existing singleton*.
%
%      ITU368_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ITU368_GUI.M with the given input arguments.
%
%      ITU368_GUI('Property','Value',...) creates a new ITU368_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ITU368_GUI_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ITU368_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ITU368_GUI

% Last Modified by GUIDE v2.5 20-Jul-2009 09:01:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ITU368_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ITU368_GUI_OutputFcn, ...
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


% --- Executes just before ITU368_GUI is made visible.
function ITU368_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ITU368_GUI (see VARARGIN)

% Choose default command line output for ITU368_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ITU368_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ITU368_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global t_g_lat;
global t_m_lat;
global t_s_lat;
global t_ns_lat;
global t_g_lon;
global t_m_lon;
global t_s_lon;
global t_ew_lon;

global r_g_lat;
global r_m_lat;
global r_s_lat;
global r_ns_lat;
global r_g_lon;
global r_m_lon;
global r_s_lon;
global r_ew_lon;

set(handles.Tlat_g,'string',abs(t_g_lat));
set(handles.Tlat_m,'string',t_m_lat);
set(handles.Tlat_s,'string',t_s_lat);
%Longitud(Y)
% if t_ns_lat==1
%     set(handles.Tew,'Value',1);
% else
% 	set(handles.Tew,'Value',2);
% end
set(handles.Tlon_g,'string',abs(t_g_lon));
set(handles.Tlon_m,'string',t_m_lon);
set(handles.Tlon_s,'string',t_s_lon);
% if t_ew_lon==1
%     set(handles.Tew,'Value',1);
% else
% 	set(handles.Tew,'Value',2);
% end

%RECEPTOR
%Latitud(X)
% if r_ns_lat==1
% 	set(handles.Rns,'Value',1);
% else% if r_ew_lon==1
% 	set(handles.Rew,'Value',1);
% else
% 	set(handles.Rew,'Value',1);
% end

% 	set(handles.Rns,'Value',2);
% end
set(handles.Rlat_g,'string',abs(r_g_lat));
set(handles.Rlat_m,'string',r_m_lat);
set(handles.Rlat_s,'string',r_s_lat);

%Longitud(Y)
set(handles.Rlon_g,'string',abs(r_g_lon));
set(handles.Rlon_m,'string',r_m_lon);
set(handles.Rlon_s,'string',r_s_lon);

set(handles.Tns,'Value',2);
set(handles.Tew,'Value',2);
set(handles.Rew,'Value',2);

set(handles.ppm_ath1,'Value',5);
set(handles.ro1,'Enable','Off');
set(handles.e1,'Enable','Off');

set(handles.ck_med2,'Value',1);
set(handles.ppm_ath2,'Value',8);
set(handles.ro2,'Enable','Off');
set(handles.e2,'Enable','Off');


function Tlat_g_Callback(hObject, eventdata, handles)
% hObject    handle to Tlat_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlat_g as text
%        str2double(get(hObject,'String')) returns contents of Tlat_g as a double


% --- Executes during object creation, after setting all properties.
function Tlat_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlat_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlon_g_Callback(hObject, eventdata, handles)
% hObject    handle to Tlon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlon_g as text
%        str2double(get(hObject,'String')) returns contents of Tlon_g as a double


% --- Executes during object creation, after setting all properties.
function Tlon_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlat_m_Callback(hObject, eventdata, handles)
% hObject    handle to Tlat_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlat_m as text
%        str2double(get(hObject,'String')) returns contents of Tlat_m as a double


% --- Executes during object creation, after setting all properties.
function Tlat_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlat_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlon_m_Callback(hObject, eventdata, handles)
% hObject    handle to Tlon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlon_m as text
%        str2double(get(hObject,'String')) returns contents of Tlon_m as a double


% --- Executes during object creation, after setting all properties.
function Tlon_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlat_s_Callback(hObject, eventdata, handles)
% hObject    handle to Tlat_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlat_s as text
%        str2double(get(hObject,'String')) returns contents of Tlat_s as a double


% --- Executes during object creation, after setting all properties.
function Tlat_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlat_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlon_s_Callback(hObject, eventdata, handles)
% hObject    handle to Tlon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlon_s as text
%        str2double(get(hObject,'String')) returns contents of Tlon_s as a double


% --- Executes during object creation, after setting all properties.
function Tlon_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Tns.
function Tns_Callback(hObject, eventdata, handles)
% hObject    handle to Tns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Tns contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Tns


% --- Executes during object creation, after setting all properties.
function Tns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Tew.
function Tew_Callback(hObject, eventdata, handles)
% hObject    handle to Tew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Tew contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Tew


% --- Executes during object creation, after setting all properties.
function Tew_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlat_g_Callback(hObject, eventdata, handles)
% hObject    handle to Rlat_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlat_g as text
%        str2double(get(hObject,'String')) returns contents of Rlat_g as a double


% --- Executes during object creation, after setting all properties.
function Rlat_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlat_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlon_g_Callback(hObject, eventdata, handles)
% hObject    handle to Rlon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlon_g as text
%        str2double(get(hObject,'String')) returns contents of Rlon_g as a double


% --- Executes during object creation, after setting all properties.
function Rlon_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlon_m_Callback(hObject, eventdata, handles)
% hObject    handle to Rlon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlon_m as text
%        str2double(get(hObject,'String')) returns contents of Rlon_m as a double


% --- Executes during object creation, after setting all properties.
function Rlon_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlat_s_Callback(hObject, eventdata, handles)
% hObject    handle to Rlat_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlat_s as text
%        str2double(get(hObject,'String')) returns contents of Rlat_s as a double


% --- Executes during object creation, after setting all properties.
function Rlat_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlat_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlon_s_Callback(hObject, eventdata, handles)
% hObject    handle to Rlon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlon_s as text
%        str2double(get(hObject,'String')) returns contents of Rlon_s as a double


% --- Executes during object creation, after setting all properties.
function Rlon_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in rns.
function rns_Callback(hObject, eventdata, handles)
% hObject    handle to rns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns rns contents as cell array
%        contents{get(hObject,'Value')} returns selected item from rns


% --- Executes during object creation, after setting all properties.
function rns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Rew.
function Rew_Callback(hObject, eventdata, handles)
% hObject    handle to Rew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Rew contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Rew


% --- Executes during object creation, after setting all properties.
function Rew_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlat_m_Callback(hObject, eventdata, handles)
% hObject    handle to Rlat_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlat_m as text
%        str2double(get(hObject,'String')) returns contents of Rlat_m as a double


% --- Executes during object creation, after setting all properties.
function Rlat_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlat_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Rns.
function Rns_Callback(hObject, eventdata, handles)
% hObject    handle to Rns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Rns contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Rns


% --- Executes during object creation, after setting all properties.
function Rns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double


% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atr_Callback(hObject, eventdata, handles)
% hObject    handle to atr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr as text
%        str2double(get(hObject,'String')) returns contents of atr as a double


% --- Executes during object creation, after setting all properties.
function atr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function art_Callback(hObject, eventdata, handles)
% hObject    handle to art (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of art as text
%        str2double(get(hObject,'String')) returns contents of art as a double


% --- Executes during object creation, after setting all properties.
function art_CreateFcn(hObject, eventdata, handles)
% hObject    handle to art (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function atr_g_Callback(hObject, eventdata, handles)
% hObject    handle to atr_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr_g as text
%        str2double(get(hObject,'String')) returns contents of atr_g as a double


% --- Executes during object creation, after setting all properties.
function atr_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atr_m_Callback(hObject, eventdata, handles)
% hObject    handle to atr_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr_m as text
%        str2double(get(hObject,'String')) returns contents of atr_m as a double


% --- Executes during object creation, after setting all properties.
function atr_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function art_m_Callback(hObject, eventdata, handles)
% hObject    handle to art_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of art_m as text
%        str2double(get(hObject,'String')) returns contents of art_m as a double


% --- Executes during object creation, after setting all properties.
function art_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to art_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atr_s_Callback(hObject, eventdata, handles)
% hObject    handle to atr_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr_s as text
%        str2double(get(hObject,'String')) returns contents of atr_s as a double


% --- Executes during object creation, after setting all properties.
function atr_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function art_s_Callback(hObject, eventdata, handles)
% hObject    handle to art_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of art_s as text
%        str2double(get(hObject,'String')) returns contents of art_s as a double


% --- Executes during object creation, after setting all properties.
function art_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to art_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function art_g_Callback(hObject, eventdata, handles)
% hObject    handle to art_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of art_g as text
%        str2double(get(hObject,'String')) returns contents of art_g as a double


% --- Executes during object creation, after setting all properties.
function art_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to art_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%TRANSMISOR
%Latitud(X)
if get(handles.Tns,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlat_g,'string'));
m=str2double(get(handles.Tlat_m,'string'));
s=str2double(get(handles.Tlat_s,'string'));
xt=dms2degrees([g m s]);%tx
%Longitud(Y)
if get(handles.Tew,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlon_g,'string'));
m=str2double(get(handles.Tlon_m,'string'));
s=str2double(get(handles.Tlon_s,'string'));
yt=dms2degrees([g m s]);%ty

%RECEPTOR
%Latitud(X)
if get(handles.Rns,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Rlat_g,'string'));
m=str2double(get(handles.Rlat_m,'string'));
s=str2double(get(handles.Rlat_s,'string'));
xr=dms2degrees([g m s]);%rx
%Longitud(Y)
if get(handles.Rew,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Rlon_g,'string'));
m=str2double(get(handles.Rlon_m,'string'));
s=str2double(get(handles.Rlon_s,'string'));
yr=dms2degrees([g m s]);%ry

%CALCULOS
set(handles.D,'string',num2str(deg2km(distance(xt,yt,xr,yr))));



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Cálculos campo eléctrico
f=str2double(get(handles.f,'string'));
D=str2double(get(handles.D,'string'));

Pt=str2double(get(handles.Pt,'string'));
Gt=str2double(get(handles.Gt,'string'));
at=str2double(get(handles.at,'string'));
lct=str2double(get(handles.lct,'string'));

Pr=str2double(get(handles.Pr,'string'));
Gr=str2double(get(handles.Gr,'string'));
ar=str2double(get(handles.ar,'string'));
lcr=str2double(get(handles.lcr,'string'));


%Medio1
if get(handles.rb_ath1,'value')==1
    [con1,per1]=con_per(get(handles.ppm_ath1,'Value'));
    set(handles.ro1,'string',con1);
    set(handles.e1,'string',per1);
else
    con1=str2double(get(handles.ro1,'string'));
    per1=str2double(get(handles.e1,'string'));
end
d1=str2double(get(handles.pormed1,'string'))*D/100;

edB1=ITU368(f,con1,per1,d1);
set(handles.db1,'string',edB1);

e1=10^(edB1/20);
set(handles.ce1,'string',e1);

%Medio2
if get(handles.rb_ath2,'value')==1
    [con2,per2]=con_per(get(handles.ppm_ath2,'Value'));
    set(handles.ro2,'string',con2);
    set(handles.e2,'string',per2);
else
    con2=str2double(get(handles.ro2,'string'));
    per2=str2double(get(handles.e2,'string'));
end
d2=str2double(get(handles.pormed2,'string'))*D/100;

edB2=ITU368(f,con2,per2,d2);
set(handles.db2,'string',edB2);

e2=10^(edB2/20);
set(handles.ce2,'string',e2);


%calculos finales
dber=ITU368(f,con1,per1,d1)-ITU368(f,con2,per2,d1)+ITU368(f,con2,per2,D);
set(handles.dber,'string',dber);

dbet=ITU368(f,con2,per2,d2)-ITU368(f,con1,per1,d2)+ITU368(f,con1,per1,D);
set(handles.dbet,'string',dbet);

if Pr==Pt
    edb=(dber+dbet)/2;
    set(handles.edb,'string',edb);
    
    PIRE=10*log10(Pt/1000)+Gt-(at*lct)-30;%bdKw
    
    etdb=edb+PIRE-4.77;
    
else    
    PIRE=10*log10(Pt/1000)+Gt-(at*lct)-30;%bdKw
    Pra=10*log10(Pr/1000)+Gr-(ar*lcr)-30;%bdKw
    
    etdb1=dbet+PIRE-4.77;
    etdb2=dber+Pra-4.77;
    etdb=etdb1+etdb2/2;
    
end

set(handles.etdb,'string',etdb);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PIRE=10*log10(Pt/1000)+Gt-(at*lct)

% 10*log10(Pt/1000)
% Gt
% (at*lct)

etdb=edb+PIRE-4.77;
set(handles.etdb,'string',etdb);


pr=etdb-20*log10(f)-107.2;
set(handles.pr,'string',pr);


function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double


% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ppm_ath2.
function ppm_ath2_Callback(hObject, eventdata, handles)
% hObject    handle to ppm_ath2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns ppm_ath2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ppm_ath2


% --- Executes during object creation, after setting all properties.
function ppm_ath2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ppm_ath2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function ro1_Callback(hObject, eventdata, handles)
% hObject    handle to ro1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ro1 as text
%        str2double(get(hObject,'String')) returns contents of ro1 as a double


% --- Executes during object creation, after setting all properties.
function ro1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ro1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e1_Callback(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e1 as text
%        str2double(get(hObject,'String')) returns contents of e1 as a double


% --- Executes during object creation, after setting all properties.
function e1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pormed1_Callback(hObject, eventdata, handles)
% hObject    handle to pormed1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pormed1 as text
%        str2double(get(hObject,'String')) returns contents of pormed1 as a double


% --- Executes during object creation, after setting all properties.
function pormed1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pormed1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function db1_Callback(hObject, eventdata, handles)
% hObject    handle to db1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of db1 as text
%        str2double(get(hObject,'String')) returns contents of db1 as a double


% --- Executes during object creation, after setting all properties.
function db1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to db1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ce1_Callback(hObject, eventdata, handles)
% hObject    handle to ce1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ce1 as text
%        str2double(get(hObject,'String')) returns contents of ce1 as a double


% --- Executes during object creation, after setting all properties.
function ce1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ce1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rb_ath1.
function rb_ath1_Callback(hObject, eventdata, handles)
% hObject    handle to rb_ath1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_ath1
if get(handles.rb_ath1,'value')==1
    set(handles.ppm_ath1,'Enable','On');
    set(handles.ro1,'Enable','Off');
    set(handles.e1,'Enable','Off');
end


% % --- Executes when selected object is changed in uipanel9.
% function uipanel9_SelectionChangeFcn(hObject, eventdata, handles)
% % hObject    handle to the selected object in uipanel9 
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rb_roe1.
function rb_roe1_Callback(hObject, eventdata, handles)
% hObject    handle to rb_roe1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_roe1
if get(handles.rb_roe1,'value')==1
    set(handles.ppm_ath1,'Enable','Off');
    set(handles.ro1,'Enable','On');
    set(handles.e1,'Enable','On');
end


% --- Executes on selection change in ppm_ath2.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to ppm_ath2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns ppm_ath2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ppm_ath2


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ppm_ath2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ro2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ro2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function e2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pormed2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pormed2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function db2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to db2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function ce2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ce2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function ro2_Callback(hObject, eventdata, handles)
% hObject    handle to ro2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ro2 as text
%        str2double(get(hObject,'String')) returns contents of ro2 as a double


% --- Executes during object creation, after setting all properties.


function e2_Callback(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e2 as text
%        str2double(get(hObject,'String')) returns contents of e2 as a double


function pormed2_Callback(hObject, eventdata, handles)
% hObject    handle to pormed2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pormed2 as text
%        str2double(get(hObject,'String')) returns contents of pormed2 as a double


% --- Executes during object creation, after setting all properties.


function db2_Callback(hObject, eventdata, handles)
% hObject    handle to db2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of db2 as text
%        str2double(get(hObject,'String')) returns contents of db2 as a double


% --- Executes during object creation, after setting all properties.


function ce2_Callback(hObject, eventdata, handles)
% hObject    handle to ce2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ce2 as text
%        str2double(get(hObject,'String')) returns contents of ce2 as a double


% --- Executes on button press in ck_med2.
function ck_med2_Callback(hObject, eventdata, handles)
% hObject    handle to ck_med2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ck_med2
if get(handles.ck_med2,'value')==0
    set(handles.ppm_ath2,'Enable','Off');
    set(handles.rb_ath2,'Enable','Off');
    set(handles.rb_roe2,'Enable','Off');
    set(handles.ro2,'Enable','Off');
    set(handles.e2,'Enable','Off');
    set(handles.pormed2,'Enable','Off');
    set(handles.db2,'Enable','Off');
    set(handles.ce2,'Enable','Off');
else
    set(handles.ppm_ath2,'Enable','On');
        set(handles.rb_ath2,'Enable','On');
    set(handles.rb_roe2,'Enable','On');
    set(handles.ro2,'Enable','On');
    set(handles.e2,'Enable','On');
    set(handles.pormed2,'Enable','On');
    set(handles.db2,'Enable','On');
    set(handles.ce2,'Enable','On');
end


% --- Executes on selection change in ppm_ath1.
function ppm_ath1_Callback(hObject, eventdata, handles)
% hObject    handle to ppm_ath1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns ppm_ath1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ppm_ath1


% --- Executes during object creation, after setting all properties.
function ppm_ath1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ppm_ath1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object deletion, before destroying properties.
function pnl_med2_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to pnl_med2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in rb_ath2.
function rb_ath2_Callback(hObject, eventdata, handles)
% hObject    handle to rb_ath2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_ath2
if get(handles.rb_ath2,'value')==1
    set(handles.ppm_ath2,'Enable','On');
    set(handles.ro2,'Enable','Off');
    set(handles.e2,'Enable','Off');
end



% --- Executes on button press in rb_roe2.
function rb_roe2_Callback(hObject, eventdata, handles)
% hObject    handle to rb_roe2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_roe2
if get(handles.rb_roe2,'value')==1
    set(handles.ppm_ath2,'Enable','Off');
    set(handles.ro2,'Enable','On');
    set(handles.e2,'Enable','On');
end





function dbet_Callback(hObject, eventdata, handles)
% hObject    handle to dbet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dbet as text
%        str2double(get(hObject,'String')) returns contents of dbet as a double


% --- Executes during object creation, after setting all properties.
function dbet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dbet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dber_Callback(hObject, eventdata, handles)
% hObject    handle to dber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dber as text
%        str2double(get(hObject,'String')) returns contents of dber as a double


% --- Executes during object creation, after setting all properties.
function dber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double


% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function edb_Callback(hObject, eventdata, handles)
% hObject    handle to edb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edb as text
%        str2double(get(hObject,'String')) returns contents of edb as a double


% --- Executes during object creation, after setting all properties.
function edb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e_Callback(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e as text
%        str2double(get(hObject,'String')) returns contents of e as a double


% --- Executes during object creation, after setting all properties.
function e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function Pt_Callback(hObject, eventdata, handles)
% hObject    handle to Pt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pt as text
%        str2double(get(hObject,'String')) returns contents of Pt as a double


% --- Executes during object creation, after setting all properties.
function Pt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Gt_Callback(hObject, eventdata, handles)
% hObject    handle to Gt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Gt as text
%        str2double(get(hObject,'String')) returns contents of Gt as a double


% --- Executes during object creation, after setting all properties.
function Gt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Gt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function at_Callback(hObject, eventdata, handles)
% hObject    handle to at (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of at as text
%        str2double(get(hObject,'String')) returns contents of at as a double


% --- Executes during object creation, after setting all properties.
function at_CreateFcn(hObject, eventdata, handles)
% hObject    handle to at (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lct_Callback(hObject, eventdata, handles)
% hObject    handle to lct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lct as text
%        str2double(get(hObject,'String')) returns contents of lct as a double


% --- Executes during object creation, after setting all properties.
function lct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pr_Callback(hObject, eventdata, handles)
% hObject    handle to Pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pr as text
%        str2double(get(hObject,'String')) returns contents of Pr as a double


% --- Executes during object creation, after setting all properties.
function Pr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Gr_Callback(hObject, eventdata, handles)
% hObject    handle to Gr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Gr as text
%        str2double(get(hObject,'String')) returns contents of Gr as a double


% --- Executes during object creation, after setting all properties.
function Gr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Gr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ar_Callback(hObject, eventdata, handles)
% hObject    handle to ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ar as text
%        str2double(get(hObject,'String')) returns contents of ar as a double


% --- Executes during object creation, after setting all properties.
function ar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lcr_Callback(hObject, eventdata, handles)
% hObject    handle to lcr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lcr as text
%        str2double(get(hObject,'String')) returns contents of lcr as a double


% --- Executes during object creation, after setting all properties.
function lcr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lcr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function etdb_Callback(hObject, eventdata, handles)
% hObject    handle to etdb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of etdb as text
%        str2double(get(hObject,'String')) returns contents of etdb as a double


% --- Executes during object creation, after setting all properties.
function etdb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etdb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function pr_Callback(hObject, eventdata, handles)
% hObject    handle to pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pr as text
%        str2double(get(hObject,'String')) returns contents of pr as a double


% --- Executes during object creation, after setting all properties.
function pr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function per_ll_Callback(hObject, eventdata, handles)
% hObject    handle to per_ll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of per_ll as text
%        str2double(get(hObject,'String')) returns contents of per_ll as a double


% --- Executes during object creation, after setting all properties.
function per_ll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to per_ll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function per_gas_Callback(hObject, eventdata, handles)
% hObject    handle to per_gas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of per_gas as text
%        str2double(get(hObject,'String')) returns contents of per_gas as a double


% --- Executes during object creation, after setting all properties.
function per_gas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to per_gas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function edit50_Callback(hObject, eventdata, handles)
% hObject    handle to edit50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit50 as text
%        str2double(get(hObject,'String')) returns contents of edit50 as a double


% --- Executes during object creation, after setting all properties.
function edit50_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


