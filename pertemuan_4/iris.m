function varargout = iris(varargin)
% IRIS MATLAB code for iris.fig
%      IRIS, by itself, creates a new IRIS or raises the existing
%      singleton*.
%
%      H = IRIS returns the handle to a new IRIS or the handle to
%      the existing singleton*.
%
%      IRIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IRIS.M with the given input arguments.
%
%      IRIS('Property','Value',...) creates a new IRIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before iris_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to iris_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help iris

% Last Modified by GUIDE v2.5 14-Mar-2023 12:12:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iris_OpeningFcn, ...
                   'gui_OutputFcn',  @iris_OutputFcn, ...
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


% --- Executes just before iris is made visible.
function iris_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to iris (see VARARGIN)

% Choose default command line output for iris
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes iris wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = iris_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnShowData.
function btnShowData_Callback(hObject, eventdata, handles)
% hObject    handle to btnShowData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('Iris.csv');
opts.SelectedVariableNames = (2:5);
allData = readmatrix('Iris.csv', opts);

set(handles.tabel, 'data', allData);


function inputSL_Callback(hObject, eventdata, handles)
% hObject    handle to inputSL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputSL as text
%        str2double(get(hObject,'String')) returns contents of inputSL as a double


% --- Executes during object creation, after setting all properties.
function inputSL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputSL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputSW_Callback(hObject, eventdata, handles)
% hObject    handle to inputSW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputSW as text
%        str2double(get(hObject,'String')) returns contents of inputSW as a double


% --- Executes during object creation, after setting all properties.
function inputSW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputSW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputPL_Callback(hObject, eventdata, handles)
% hObject    handle to inputPL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputPL as text
%        str2double(get(hObject,'String')) returns contents of inputPL as a double


% --- Executes during object creation, after setting all properties.
function inputPL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputPL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputPW_Callback(hObject, eventdata, handles)
% hObject    handle to inputPW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputPW as text
%        str2double(get(hObject,'String')) returns contents of inputPW as a double


% --- Executes during object creation, after setting all properties.
function inputPW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputPW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnClassify.
function btnClassify_Callback(hObject, eventdata, handles)
% hObject    handle to btnClassify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get input
inputSL = get(handles.inputSL,'string');
inputSW = get(handles.inputSW,'string');
inputPL = get(handles.inputPL,'string');
inputPW = get(handles.inputPW,'string');
inputK = get(handles.inputK,'string');

% Mengubah string menjadi double
sl = str2double(inputSL);
sw = str2double(inputSW);
pl = str2double(inputPL);
pw = str2double(inputPW);
k = str2double(inputK);
Z
sample = [sl sw pl pw]; % Membuat vektor

% Data training
opts = detectImportOptions('Iris.csv');
opts.SelectedVariableNames = (2:5);
training = readmatrix('Iris.csv', opts);

% Group
opts.SelectedVariableNames = (6);
group = readmatrix('Iris.csv', opts);

% Proses & hasil
Model = fitcknn(training, group, "NumNeighbors", k);
result = predict(Model, sample);

% Menampilkan hasil
set(handles.hasil, 'string', (result));


function inputK_Callback(hObject, eventdata, handles)
% hObject    handle to inputK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputK as text
%        str2double(get(hObject,'String')) returns contents of inputK as a double


% --- Executes during object creation, after setting all properties.
function inputK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
