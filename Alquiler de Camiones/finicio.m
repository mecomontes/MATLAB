function varargout = finicio(varargin)
% FINICIO MATLAB code for finicio.fig
%      FINICIO, by itself, creates a new FINICIO or raises the existing
%      singleton*.
%
%      H = FINICIO returns the handle to a new FINICIO or the handle to
%      the existing singleton*.
%
%      FINICIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINICIO.M with the given input arguments.
%
%      FINICIO('Property','Value',...) creates a new FINICIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finicio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finicio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finicio

% Last Modified by GUIDE v2.5 16-May-2013 15:22:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finicio_OpeningFcn, ...
                   'gui_OutputFcn',  @finicio_OutputFcn, ...
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


% --- Executes just before finicio is made visible.
function finicio_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finicio (see VARARGIN)

% Choose default command line output for finicio
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finicio wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finicio_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bmatricular.
function bmatricular_Callback(hObject, eventdata, handles)
 
 
% hObject    handle to bmatricular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close
fmatricular



% --- Executes on button press in bretirar.
function bretirar_Callback(hObject, eventdata, handles)

close
fretirar
% hObject    handle to bretirar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bprogramar.
function bprogramar_Callback(hObject, eventdata, handles)

close
fprogramar
% hObject    handle to bprogramar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bguardar.
function bguardar_Callback(hObject, eventdata, handles)
global placas
global rutas
global clases
global fechas
global marcas

clc
disp(placas)
disp(rutas)
disp(clases)
disp(fechas)
disp(marcas)
disp(fechas)

save
close

% hObject    handle to bguardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in bInicio.
function bInicio_Callback(hObject, eventdata, handles)
% hObject    handle to bInicio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nc
nc = 0;
