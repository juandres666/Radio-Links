function varargout = Distn_Acimt(varargin)
% DISTN_ACIMT M-file for Distn_Acimt.fig
%      DISTN_ACIMT, by itself, creates a new DISTN_ACIMT or raises the existing
%      singleton*.
%
%      H = DISTN_ACIMT returns the handle to a new DISTN_ACIMT or the handle to
%      the existing singleton*.
%
%      DISTN_ACIMT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISTN_ACIMT.M with the given input arguments.
%
%      DISTN_ACIMT('Property','Value',...) creates a new DISTN_ACIMT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Distn_Acimt_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Distn_Acimt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Distn_Acimt

% Last Modified by GUIDE v2.5 15-Jul-2009 22:28:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Distn_Acimt_OpeningFcn, ...
                   'gui_OutputFcn',  @Distn_Acimt_OutputFcn, ...
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


% --- Executes just before Distn_Acimt is made visible.
function Distn_Acimt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Distn_Acimt (see VARARGIN)

% Choose default command line output for Distn_Acimt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Distn_Acimt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Distn_Acimt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
set(handles.Tns,'Value',2);
set(handles.Tew,'Value',2);
set(handles.Rew,'Value',2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(handles.Rlat_g,'Enable','Off');
set(handles.Rlat_m,'Enable','Off');
set(handles.Rlat_s,'Enable','Off');
set(handles.Rlon_g,'Enable','Off');
set(handles.Rlon_m,'Enable','Off');
set(handles.Rlon_s,'Enable','Off');
set(handles.Rns,'Enable','Off');
set(handles.Rew,'Enable','Off');
set(handles.Gsat,'Enable','Off');
set(handles.Tsat,'Enable','Off');
set(handles.Psat,'Enable','Off');
set(handles.Perdisat,'Enable','Off');
%set(handles.TWTAing,'Enable','Off');
%set(handles.TWTAsal,'Enable','Off');
set(handles.Tempr,'Enable','Off');
%set(handles.Pr,'Enable','Off');
%   set(handles.Lb_sub,'Enable','Of');
%     set(handles.d_sub,'Enable','Off');
%     set(handles.n_sub,'Enable','Off');
%     set(handles.B_sub,'Enable','Off');
%     set(handles.tilt_sub,'Enable','Off');
%     set(handles.si_sub,'Enable','Off');
%   set(handles.Tempr,'Enable','Off');
 
    axes(handles.axes5);
    background = imread('a2.jpg');
    axis off;
    imshow(background);
    
   

% axes(handles.axes4);
% background = imread('sat1.jpg');
% axis off;
% imshow(background);

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

%%
%%%Variables globales
global CNo_u;
global CNo_d;
global CNo_totaldb;
global CNtotaldb;
global EbN;

global A_sub;
global Agas_sub;
global A_baj;
global Agas_baj;
global te;
global te_r;
global bandera; 
global TR;

global PIREe;
global lbs;
global d;
global PIREsat;
global lbd;
global d_sub;

global B;
global n;
global tilt;
%global d;
global si;
global lb;
global z;
global l;
global zbaj;
global lbaj;

global B_sub;
global n_sub;
global tilt_sub;
%global d_sub;
global si_sub;
global lb_sub;
%%


%TRANSMISOR
%Latitud(X)
if get(handles.Tns,'Value')==1
	signo=1;
    z=signo;
else
	signo=-1;
     z=signo;
end
g=signo*str2double(get(handles.Tlat_g,'string'));
m=str2double(get(handles.Tlat_m,'string'));
s=str2double(get(handles.Tlat_s,'string'));
xt=dms2degrees([g m s]);%tx
%Longitud(Y)
if get(handles.Tew,'Value')==1
	signo=1;
    l=signo;
else
	signo=-1;
    l=signo;
end
g=signo*str2double(get(handles.Tlon_g,'string'));
m=str2double(get(handles.Tlon_m,'string'));
s=str2double(get(handles.Tlon_s,'string'));
yt=dms2degrees([g m s]);%ty

%RECEPTOR
%Latitud(X)
if get(handles.Rns,'Value')==1
	signo=1;
    l=signo;
else
	signo=-1;
    l=signo;
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Longitud satelite(Y)
if get(handles.Sew,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Slon_g,'string'));
m=str2double(get(handles.Slon_m,'string'));
s=str2double(get(handles.Slon_s,'string'));
ss1=dms2degrees([g m s]);%ry
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%angulo de cobertura%%
os1=0;

oe=xt*pi/180;
os=os1*pi/180;
se=yt*pi/180;
ss=ss1*pi/180;
R=6370;
h=36000;
q=R/(R+h);

oes=abs(yt-ss1)*pi/180;
B1=acos(cos(oe)*cos(os)*cos(oes)+sin(oe)*sin(os));
B=B1*180/pi;

n1=acos(sin(B1)/sqrt(1+q^2-2*q*cos(B1)));
n=n1*180/pi;
tilt=asin(q*cos(n1))*180/pi;
A=atan(tan(oes)/sin(oe))*180/pi;
d=(R+h)*(sqrt(1+q^2-2*q*cos(B1)))

if z==1
  %  set(handles.hemis1,'string','Hemisferio Norte');
    if ss1<yt
        A=180+A;
      %  set(handles.hemis,'string','Satelite Oeste-Estacion Terrena');
        zbaj=1;
    elseif ss1>yt
        A=180-A;
       % set(handles.hemis,'string','Satelite Este-Estacion Terrena');
        zbaj=2;
    end
elseif z==-1
%    set(handles.hemis1,'string','Hemisferio Sur');
    if ss1<yt
        A=360+abs(A);
     %   set(handles.hemis,'string','Satelite Oeste-Estacion Terrena');
        zbaj=3;
    elseif ss1>yt
        A=abs(A);
      %  set(handles.hemis,'string','Satelite Este-Estacion Terrena');
        zbaj=4;
    end
end
si=A
f=str2double(get(handles.ft,'string'));
lb=32.45+20*log10(f)+20*log10(d);

% set(handles.B,'string',B);
% set(handles.n,'string',n);
% set(handles.tilt,'string',tilt);
% set(handles.d,'string',d);
% set(handles.si,'string',si);
% set(handles.Lb,'string',lb);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%C/N0%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GTsat=str2double(get(handles.GT,'string'));
PIREsat=str2double(get(handles.PIREsat,'string'));
ft=str2double(get(handles.ft,'string'));
fr=str2double(get(handles.fr,'string'));
Gt=str2double(get(handles.Gt,'string'));
Gr=str2double(get(handles.Gr,'string'));
Perdit=str2double(get(handles.Perdit,'string'));
Perdir=str2double(get(handles.Perdir,'string'));
Tempt=str2double(get(handles.Tempt,'string'));
Pt=str2double(get(handles.Pt,'string'));
TWTAsal=str2double(get(handles.TWTAsal,'string'));
TWTAing=str2double(get(handles.TWTAing,'string'));
%%Pr=str2double(get(handles.Pr,'string'));
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%  SUBIDA   %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pol=(get(handles.pol,'value'));
at_ll=(get(handles.at_ll,'value'));
t=7.5;
du=400;%Km dist. de subida

% f1=f/1000;

[A,Agas]=perdida_lluvia_gas(ft,du,pol,at_ll,t);
A_sub=A;
Agas_sub=Agas;

% set(handles.A,'string',A_sub);
% set(handles.Agas,'string',Agas_sub);

PIREe=10*log10(Pt)+Gt-Perdit
lbs=92.45+20*log10(ft)+20*log10(d)+A_sub+Agas_sub

if get(handles.selec2,'Value')==1
 CNo_u=GTsat+PIREe-lbs+228.6+TWTAing
 CNo_uveces=10^(CNo_u/10);

else  

Gsat=str2double(get(handles.Gsat,'string'));
Tsat=str2double(get(handles.Tsat,'string'));

GTsat=Gsat-(10*log10(Tsat))

CNo_u=GTsat+PIREe-lbs+228.6+TWTAing
CNo_uveces=10^(CNo_u/10);
end
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% BAJADA %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%CASO DE QUE SEA ENLACE CON LA MISMA ESTACION TERRENA%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[A,Agas]=perdida_lluvia_gas(fr,du,pol,at_ll,t);
A_baj=A;
Agas_baj=Agas;

% set(handles.A_baj,'string',A_baj);
% set(handles.Agas_baj,'string',Agas_baj);

if get(handles.selec1,'Value')==1
    
    axes(handles.axes5);
    background = imread('a1.jpg');
    axis off;
    imshow(background);
os1=0;
oe_=xr*pi/180;
os_=os1*pi/180;
se_=yr*pi/180;
ss_=ss1*pi/180;
R=6370;
h=36000;
q=R/(R+h);

oes_=abs(yr-ss1)*pi/180;
B2=acos(cos(oe_)*cos(os_)*cos(oes_)+sin(oe_)*sin(os_));  
B_sub=B2*180/pi;

 d_sub=(R+h)*(sqrt(1+q^2-2*q*cos(B2)));
 
 n2=acos(sin(B2)/sqrt(1+q^2-2*q*cos(B2)));
n_sub=n2*180/pi;
tilt_sub=asin(q*cos(n2))*180/pi;
A_sub=atan(tan(oes_)/sin(oe_))*180/pi

    if l==1
%        set(handles.hemis1_sub,'string','Hemisferio Norte');
        if ss1<yr
          A_sub=180+A_sub;
        %  set(handles.hemis_sub,'string','Satelite Oeste-Estacion Terrena');
          lbaj=1;
        elseif ss1>yr
            A_sub=180-A_sub;
         %  set(handles.hemis_sub,'string','Satelite Este-Estacion Terrena');
           lbaj=2;
        end
    elseif l==-1
      %  set(handles.hemis1_sub,'string','Hemisferio Sur');
        if ss1<yr
            A_sub=360+abs(A_sub);
          %  set(handles.hemis_sub,'string','Satelite Oeste-Estacion Terrena');
            lbaj=3;
        elseif ss1>yr
            A_sub=abs(A_sub);
          %  set(handles.hemis_sub,'string','Satelite Este-Estacion Terrena');
            lbaj=4;
        end
    end
    
si_sub=A_sub;
f=str2double(get(handles.ft,'string'));
lb_sub=32.45+20*log10(f)+20*log10(d_sub);

% set(handles.B_sub,'string',B_sub);
% set(handles.n_sub,'string',n_sub);
% set(handles.tilt_sub,'string',tilt_sub);
% set(handles.d_sub,'string',d_sub);
% set(handles.si_sub,'string',si_sub);
% set(handles.Lb_sub,'string',lb_sub);

if bandera==1
Tempr=te_r;
Tempt=te;
set(handles.Tempr,'string',Tempr);
set(handles.Tempt,'string',Tempt);
else
Tempr=str2double(get(handles.Tempr,'string'));%Temp Ruido del sistema
dfg=23
end 
 Ge=10^(Gr/10);
GTveces=Ge/Tempr;%%%%utilizo temp del receptor
GTbaja=10*log10(GTveces);
lbd=92.45+20*log10(fr)+20*log10(d_sub)+Agas_baj+A_baj;%frec receptor Dist. de bajada
TWTAsal=str2double(get(handles.TWTAsal,'string'));

    if get(handles.selec3,'Value')==1
        PIREsat=PIREsat-Perdir+TWTAsal;
    else
        Psat=str2double(get(handles.Psat,'string'));
        Perdisat=str2double(get(handles.Perdisat,'string'));
        
        PIREsat=10*log10(Psat)+TWTAsal-Perdisat
    
    end

    CNo_d=(GTbaja)+PIREsat-lbd+228.6;
    CNo_dveces=10^(CNo_d/10);   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%CASO DE QUE SEA ENLACE CON LA MISMA ESTACION TERRENA%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
else
       
    if bandera==1
        Tempt=te;
        set(handles.Tempt,'string',Tempt);
        j=5
    else 
        Tempt=str2double(get(handles.Tempt,'string'));
        j=23
    end
    
Ge=10^(Gr/10);
GTveces=Ge/Tempt;%%%%utilizo temp del transmisor
GTbaja=10*log10(GTveces)
lbd=92.45+20*log10(fr)+20*log10(d)+Agas_baj+A_baj; %frec receptor Dist. de bajada
TWTAsal=str2double(get(handles.TWTAsal,'string'));

    if get(handles.selec3,'Value')==1

        PIREsat=PIREsat-Perdir+TWTAsal
    else
        Psat=str2double(get(handles.Psat,'string'));
        Perdisat=str2double(get(handles.Perdisat,'string'));
        
        PIREsat=10*log10(Psat)+TWTAsal-Perdisat
    
    end
  CNo_d=(GTbaja)+PIREsat-lbd+228.6;
  CNo_dveces=10^(CNo_d/10);
end
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Total %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vb=str2double(get(handles.vb,'string'));
ruido=str2double(get(handles.ruido,'string'));

CNo_total=(1/((1/CNo_uveces)+(1/CNo_dveces)));
CNo_totaldb=10*log10(CNo_total);

CN_d=CNo_d-10*log10(ruido*1000000);
CN_dveces=10^(CN_d/10);
CN_u=CNo_u-10*log10(ruido*1000000);
CN_uveces=10^(CN_u/10);

CNtotal=(1/((1/CN_uveces)+(1/CN_dveces)));
CNtotaldb=10*log10(CNtotal);

EbN=CNtotaldb+10*log10((ruido)/(vb));


% set(handles.CNosubida,'string',CNo_u);
% set(handles.CNobajada,'string',CNo_d);
% set(handles.CNototal,'string',CNo_totaldb);
% 
% set(handles.CNtotaldb,'string',CNtotaldb);
% set(handles.EbN,'string',EbN);
bandera=0;

if get(handles.selec1,'Value')==1
        TR=1;
    else 
        TR=0;
 end

%%
mostrar;

%%
% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Datos.
function Datos_Callback(hObject, eventdata, handles)
% hObject    handle to Datos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

d=str2double(get(handles.D,'string'));

% d=20;
for x=1:d
    fx(x)=((x*(d-x))/(16986.67))*1000
end;
h=[2527 2523 2512 2480 2494 2502 2486 2436 2388 2371 2361 2357 2419 2459 2434 2325 2388 2515 2638 2687 2832];
for x=1:d>x,correg(x)=fx(x)+h(x),end;

set(handles.fdex,'string',fx(20));
set(handles.fxcor,'string',correg(20));

plot([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20],correg);
axes(handles.axes1);
grid on


%%%%%%%%%%%%%%%%%%%%%%%% Fresnel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

antT=str2double(get(handles.antenat,'string'));
antR=str2double(get(handles.antenar,'string'));

y1=antT+h(1);
y2=antR+h(20);
m=(y2-y1)/(20000);

for i=1:d,recta(i)=(m*i*1000)+h(1),end;
lamda=3e5/str2double(get(handles.frec,'string'))

for j=1:d,R(j)=(sqrt((lamda*(j)*(20-(j)))/20))*1000,end;

for t=1:d,fresnelM(t)=recta(t)+R(t),end;
set(handles.fresnelM,'string',fresnelM(1));

for l=1:d,fresnelmenos(l)=recta(l)-R(l),end;
set(handles.fresnelmenos,'string',fresnelmenos(1));

plot([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20],fresnelM);
axes(handles.axes2);
plot([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20],h);
axes(handles.axes2);
grid on


%     
function fdex_Callback(hObject, eventdata, handles)
% hObject    handle to fdex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fdex as text
%        str2double(get(hObject,'String')) returns contents of fdex as a double


% --- Executes during object creation, after setting all properties.
function fdex_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fdex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fxcor_Callback(hObject, eventdata, handles)
% hObject    handle to fxcor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fxcor as text
%        str2double(get(hObject,'String')) returns contents of fxcor as a double


% --- Executes during object creation, after setting all properties.
function fxcor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fxcor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on selection change in selecdist.
function selecdist_Callback(hObject, eventdata, handles)
% hObject    handle to selecdist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns selecdist contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selecdist


% switch get(handles.selecdist,'value')
%     case 1%1k
%         set(handles.fdex,'string',fx(1));
%         set(handles.fxcor,'string',correg(1));
%         
%     case 2%1k
%         set(handles.fdex,'string',fx(2));
%         set(handles.fxcor,'string',correg(2));
%     case 3%1k
%         set(handles.fdex,'string',fx(3));
%         set(handles.fxcor,'string',correg(3));
%     case 4%1k
%         set(handles.fdex,'string',fx(4));
%         set(handles.fxcor,'string',correg(4));
% end


% --- Executes during object creation, after setting all properties.
function selecdist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selecdist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function antenat_Callback(hObject, eventdata, handles)
% hObject    handle to antenat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of antenat as text
%        str2double(get(hObject,'String')) returns contents of antenat as a double


% --- Executes during object creation, after setting all properties.
function antenat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to antenat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function antenar_Callback(hObject, eventdata, handles)
% hObject    handle to antenar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of antenar as text
%        str2double(get(hObject,'String')) returns contents of antenar as a double


% --- Executes during object creation, after setting all properties.
function antenar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to antenar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function frec_Callback(hObject, eventdata, handles)
% hObject    handle to frec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frec as text
%        str2double(get(hObject,'String')) returns contents of frec as a double


% --- Executes during object creation, after setting all properties.
function frec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function fresnelM_Callback(hObject, eventdata, handles)
% hObject    handle to fresnelM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fresnelM as text
%        str2double(get(hObject,'String')) returns contents of fresnelM as a double


% --- Executes during object creation, after setting all properties.
function fresnelM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fresnelM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fresnelmenos_Callback(hObject, eventdata, handles)
% hObject    handle to fresnelmenos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fresnelmenos as text
%        str2double(get(hObject,'String')) returns contents of fresnelmenos as a double


% --- Executes during object creation, after setting all properties.
function fresnelmenos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fresnelmenos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





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





function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B as text
%        str2double(get(hObject,'String')) returns contents of B as a double


% --- Executes during object creation, after setting all properties.
function B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tilt_Callback(hObject, eventdata, handles)
% hObject    handle to tilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tilt as text
%        str2double(get(hObject,'String')) returns contents of tilt as a double


% --- Executes during object creation, after setting all properties.
function tilt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function si_Callback(hObject, eventdata, handles)
% hObject    handle to si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of si as text
%        str2double(get(hObject,'String')) returns contents of si as a double


% --- Executes during object creation, after setting all properties.
function si_CreateFcn(hObject, eventdata, handles)
% hObject    handle to si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function edit48_Callback(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit48 as text
%        str2double(get(hObject,'String')) returns contents of edit48 as a double


% --- Executes during object creation, after setting all properties.
function edit48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit49_Callback(hObject, eventdata, handles)
% hObject    handle to edit49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit49 as text
%        str2double(get(hObject,'String')) returns contents of edit49 as a double


% --- Executes during object creation, after setting all properties.
function edit49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit49 (see GCBO)
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



function edit51_Callback(hObject, eventdata, handles)
% hObject    handle to edit51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit51 as text
%        str2double(get(hObject,'String')) returns contents of edit51 as a double


% --- Executes during object creation, after setting all properties.
function edit51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit52_Callback(hObject, eventdata, handles)
% hObject    handle to edit52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit52 as text
%        str2double(get(hObject,'String')) returns contents of edit52 as a double


% --- Executes during object creation, after setting all properties.
function edit52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit53_Callback(hObject, eventdata, handles)
% hObject    handle to edit53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit53 as text
%        str2double(get(hObject,'String')) returns contents of edit53 as a double


% --- Executes during object creation, after setting all properties.
function edit53_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Slon_g_Callback(hObject, eventdata, handles)
% hObject    handle to Slon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Slon_g as text
%        str2double(get(hObject,'String')) returns contents of Slon_g as a double


% --- Executes during object creation, after setting all properties.
function Slon_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Slon_m_Callback(hObject, eventdata, handles)
% hObject    handle to Slon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Slon_m as text
%        str2double(get(hObject,'String')) returns contents of Slon_m as a double


% --- Executes during object creation, after setting all properties.
function Slon_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Slon_s_Callback(hObject, eventdata, handles)
% hObject    handle to Slon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Slon_s as text
%        str2double(get(hObject,'String')) returns contents of Slon_s as a double


% --- Executes during object creation, after setting all properties.
function Slon_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Sew.
function Sew_Callback(hObject, eventdata, handles)
% hObject    handle to Sew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Sew contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Sew


% --- Executes during object creation, after setting all properties.
function Sew_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ft_Callback(hObject, eventdata, handles)
% hObject    handle to ft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ft as text
%        str2double(get(hObject,'String')) returns contents of ft as a double


% --- Executes during object creation, after setting all properties.
function ft_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Gt_Callback(hObject, eventdata, handles)
% hObject    handle to gt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gt as text
%        str2double(get(hObject,'String')) returns contents of gt as a double


% --- Executes during object creation, after setting all properties.
function Gt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Perdit_Callback(hObject, eventdata, handles)
% hObject    handle to Perdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Perdit as text
%        str2double(get(hObject,'String')) returns contents of Perdit as a double


% --- Executes during object creation, after setting all properties.
function Perdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Perdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tempt_Callback(hObject, eventdata, handles)
% hObject    handle to Tempt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tempt as text
%        str2double(get(hObject,'String')) returns contents of Tempt as a double


% --- Executes during object creation, after setting all properties.
function Tempt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tempt (see GCBO)
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



function fr_Callback(hObject, eventdata, handles)
% hObject    handle to fr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fr as text
%        str2double(get(hObject,'String')) returns contents of fr as a double


% --- Executes during object creation, after setting all properties.
function fr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fr (see GCBO)
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



function Perdir_Callback(hObject, eventdata, handles)
% hObject    handle to Perdir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Perdir as text
%        str2double(get(hObject,'String')) returns contents of Perdir as a double


% --- Executes during object creation, after setting all properties.
function Perdir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Perdir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit46_Callback(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit46 as text
%        str2double(get(hObject,'String')) returns contents of edit46 as a double


% --- Executes during object creation, after setting all properties.
function edit46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit47_Callback(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit47 as text
%        str2double(get(hObject,'String')) returns contents of edit47 as a double


% --- Executes during object creation, after setting all properties.
function edit47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function Lb_Callback(hObject, eventdata, handles)
% hObject    handle to Lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Lb as text
%        str2double(get(hObject,'String')) returns contents of Lb as a double


% --- Executes during object creation, after setting all properties.
function Lb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in selec1.
function selec1_Callback(hObject, eventdata, handles)
% hObject    handle to selec1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.selec1,'Value')==1
    set(handles.Rlat_g,'Enable','On');
    set(handles.Rlat_m,'Enable','On');
    set(handles.Rlat_s,'Enable','On');
    set(handles.Rlon_g,'Enable','On');
    set(handles.Rlon_m,'Enable','On');
    set(handles.Rlon_s,'Enable','On');
    set(handles.Rns,'Enable','On');
    set(handles.Rew,'Enable','On');
    set(handles.Tempr,'Enable','On');
    %set(handles.Pr,'Enable','On');
    
%     set(handles.Lb_sub,'Enable','On');
%     set(handles.d_sub,'Enable','On');
%     set(handles.n_sub,'Enable','On');
%     set(handles.B_sub,'Enable','On');
%     set(handles.tilt_sub,'Enable','On');
%     set(handles.si_sub,'Enable','On');
%     set(handles.Tempr,'Enable','On');
      
        axes(handles.axes5);
        background = imread('a1.jpg');
        axis off;
        imshow(background);   

else
    set(handles.Rlat_g,'Enable','Off');
    set(handles.Rlat_m,'Enable','Off');
    set(handles.Rlat_s,'Enable','Off');
    set(handles.Rlon_g,'Enable','Off');
    set(handles.Rlon_m,'Enable','Off');
    set(handles.Rlon_s,'Enable','Off');
    set(handles.Rns,'Enable','Off');
    set(handles.Rew,'Enable','Off');
    set(handles.Tempr,'Enable','Off');
    %set(handles.Pr,'Enable','Off');
%       set(handles.Lb_sub,'Enable','Of');
%     set(handles.d_sub,'Enable','Off');
%     set(handles.n_sub,'Enable','Off');
%     set(handles.B_sub,'Enable','Off');
%     set(handles.tilt_sub,'Enable','Off');
%     set(handles.si_sub,'Enable','Off');
%     set(handles.Tempr,'Enable','Off');
    
        axes(handles.axes5);
        background = imread('a2.jpg');
        axis off;
        imshow(background); 
end


% Hint: get(hObject,'Value') returns toggle state of selec1

% --- Executes on button press in selec2.
function selec2_Callback(hObject, eventdata, handles)
% hObject    handle to selec2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.selec2,'Value')==1
    set(handles.GT,'Enable','On');
    set(handles.Gsat,'Enable','Off');
    set(handles.Tsat,'Enable','Off');
else
    set(handles.GT,'Enable','Off');
    set(handles.Gsat,'Enable','On');
    set(handles.Tsat,'Enable','On');
end

% Hint: get(hObject,'Value') returns toggle state of selec2



function Tsat_Callback(hObject, eventdata, handles)
% hObject    handle to Tsat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tsat as text
%        str2double(get(hObject,'String')) returns contents of Tsat as a double


% --- Executes during object creation, after setting all properties.
function Tsat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tsat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PIREsat_Callback(hObject, eventdata, handles)
% hObject    handle to PIREsat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PIREsat as text
%        str2double(get(hObject,'String')) returns contents of PIREsat as a double


% --- Executes during object creation, after setting all properties.
function PIREsat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PIREsat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Psat_Callback(hObject, eventdata, handles)
% hObject    handle to Psat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Psat as text
%        str2double(get(hObject,'String')) returns contents of Psat as a double


% --- Executes during object creation, after setting all properties.
function Psat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Psat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Perdisat_Callback(hObject, eventdata, handles)
% hObject    handle to Perdisat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Perdisat as text
%        str2double(get(hObject,'String')) returns contents of Perdisat as a double


% --- Executes during object creation, after setting all properties.
function Perdisat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Perdisat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GT_Callback(hObject, eventdata, handles)
% hObject    handle to GT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GT as text
%        str2double(get(hObject,'String')) returns contents of GT as a double


% --- Executes during object creation, after setting all properties.
function GT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Gsat_Callback(hObject, eventdata, handles)
% hObject    handle to Gsat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Gsat as text
%        str2double(get(hObject,'String')) returns contents of Gsat as a double


% --- Executes during object creation, after setting all properties.
function Gsat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Gsat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TWTAing_Callback(hObject, eventdata, handles)
% hObject    handle to TWTAing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TWTAing as text
%        str2double(get(hObject,'String')) returns contents of TWTAing as a double


% --- Executes during object creation, after setting all properties.
function TWTAing_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TWTAing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TWTAsal_Callback(hObject, eventdata, handles)
% hObject    handle to TWTAsal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TWTAsal as text
%        str2double(get(hObject,'String')) returns contents of TWTAsal as a double


% --- Executes during object creation, after setting all properties.
function TWTAsal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TWTAsal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in selec3.
function selec3_Callback(hObject, eventdata, handles)
% hObject    handle to selec3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if get(handles.selec3,'Value')==1
    set(handles.PIREsat,'Enable','On');
    set(handles.Psat,'Enable','Off');
    set(handles.Perdisat,'Enable','Off');
   % set(handles.TWTAing,'Enable','Off');
    %set(handles.TWTAsal,'Enable','Off');
    
else
    set(handles.PIREsat,'Enable','Off');
    set(handles.Psat,'Enable','On');
    set(handles.Perdisat,'Enable','On');
    %set(handles.TWTAing,'Enable','On');
    %set(handles.TWTAsal,'Enable','On');
end
% Hint: get(hObject,'Value') returns toggle state of selec3





function CNosubida_Callback(hObject, eventdata, handles)
% hObject    handle to CNosubida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNosubida as text
%        str2double(get(hObject,'String')) returns contents of CNosubida as a double


% --- Executes during object creation, after setting all properties.
function CNosubida_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNosubida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNobajada_Callback(hObject, eventdata, handles)
% hObject    handle to CNobajada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNobajada as text
%        str2double(get(hObject,'String')) returns contents of CNobajada as a double


% --- Executes during object creation, after setting all properties.
function CNobajada_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNobajada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNototal_Callback(hObject, eventdata, handles)
% hObject    handle to CNototal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNototal as text
%        str2double(get(hObject,'String')) returns contents of CNototal as a double


% --- Executes during object creation, after setting all properties.
function CNototal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNototal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function si_sub_Callback(hObject, eventdata, handles)
% hObject    handle to si_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of si_sub as text
%        str2double(get(hObject,'String')) returns contents of si_sub as a double


% --- Executes during object creation, after setting all properties.
function si_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to si_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit80_Callback(hObject, eventdata, handles)
% hObject    handle to edit80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit80 as text
%        str2double(get(hObject,'String')) returns contents of edit80 as a double


% --- Executes during object creation, after setting all properties.
function edit80_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_sub_Callback(hObject, eventdata, handles)
% hObject    handle to n_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_sub as text
%        str2double(get(hObject,'String')) returns contents of n_sub as a double


% --- Executes during object creation, after setting all properties.
function n_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_sub_Callback(hObject, eventdata, handles)
% hObject    handle to B_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B_sub as text
%        str2double(get(hObject,'String')) returns contents of B_sub as a double


% --- Executes during object creation, after setting all properties.
function B_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tilt_sub_Callback(hObject, eventdata, handles)
% hObject    handle to tilt_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tilt_sub as text
%        str2double(get(hObject,'String')) returns contents of tilt_sub as a double


% --- Executes during object creation, after setting all properties.
function tilt_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tilt_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_sub_Callback(hObject, eventdata, handles)
% hObject    handle to d_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d_sub as text
%        str2double(get(hObject,'String')) returns contents of d_sub as a double

% --- Executes during object creation, after setting all properties.

function d_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Lb_sub_Callback(hObject, eventdata, handles)
% hObject    handle to Lb_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Lb_sub as text
%        str2double(get(hObject,'String')) returns contents of Lb_sub as a double


% --- Executes during object creation, after setting all properties.
function Lb_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lb_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function Tempr_Callback(hObject, eventdata, handles)
% hObject    handle to Tempr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tempr as text
%        str2double(get(hObject,'String')) returns contents of Tempr as a double


% --- Executes during object creation, after setting all properties.
function Tempr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tempr (see GCBO)
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





function ruido_Callback(hObject, eventdata, handles)
% hObject    handle to ruido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ruido as text
%        str2double(get(hObject,'String')) returns contents of ruido as a double


% --- Executes during object creation, after setting all properties.
function ruido_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ruido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vb_Callback(hObject, eventdata, handles)
% hObject    handle to vb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vb as text
%        str2double(get(hObject,'String')) returns contents of vb as a double


% --- Executes during object creation, after setting all properties.
function vb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function EbN_Callback(hObject, eventdata, handles)
% hObject    handle to EbN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EbN as text
%        str2double(get(hObject,'String')) returns contents of EbN as a double


% --- Executes during object creation, after setting all properties.
function EbN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EbN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNtotaldb_Callback(hObject, eventdata, handles)
% hObject    handle to CNtotaldb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNtotaldb as text
%        str2double(get(hObject,'String')) returns contents of CNtotaldb as a double


% --- Executes during object creation, after setting all properties.
function CNtotaldb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNtotaldb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on selection change in pol.
function pol_Callback(hObject, eventdata, handles)
% hObject    handle to pol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns pol contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pol


% --- Executes during object creation, after setting all properties.
function pol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in at_ll.
function at_ll_Callback(hObject, eventdata, handles)
% hObject    handle to at_ll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns at_ll contents as cell array
%        contents{get(hObject,'Value')} returns selected item from at_ll


% --- Executes during object creation, after setting all properties.
function at_ll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to at_ll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function edit95_Callback(hObject, eventdata, handles)
% hObject    handle to edit95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit95 as text
%        str2double(get(hObject,'String')) returns contents of edit95 as a double


% --- Executes during object creation, after setting all properties.
function edit95_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Agas_Callback(hObject, eventdata, handles)
% hObject    handle to Agas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Agas as text
%        str2double(get(hObject,'String')) returns contents of Agas as a double


% --- Executes during object creation, after setting all properties.
function Agas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Agas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double


% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function Agas_baj_Callback(hObject, eventdata, handles)
% hObject    handle to Agas_baj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Agas_baj as text
%        str2double(get(hObject,'String')) returns contents of Agas_baj as a double


% --- Executes during object creation, after setting all properties.
function Agas_baj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Agas_baj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_baj_Callback(hObject, eventdata, handles)
% hObject    handle to A_baj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A_baj as text
%        str2double(get(hObject,'String')) returns contents of A_baj as a double


% --- Executes during object creation, after setting all properties.
function A_baj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_baj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%
%global bandera;
global TR;
jg=get(handles.selec1,'Value')
    if get(handles.selec1,'Value')==1
        TR=1;
    else 
        TR=0;
    end
%bandera=0;

Temp_Ruido_Sisitema;

%%


% --- Executes on button press in selec4.
function selec4_Callback(hObject, eventdata, handles)
% hObject    handle to selec4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of selec4


