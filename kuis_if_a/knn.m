function varargout = knn(varargin)
% KNN MATLAB code for knn.fig
%      KNN, by itself, creates a new KNN or raises the existing
%      singleton*.
%
%      H = KNN returns the handle to a new KNN or the handle to
%      the existing singleton*.
%
%      KNN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KNN.M with the given input arguments.
%
%      KNN('Property','Value',...) creates a new KNN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before knn_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to knn_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help knn

% Last Modified by GUIDE v2.5 20-Mar-2023 20:07:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @knn_OpeningFcn, ...
                   'gui_OutputFcn',  @knn_OutputFcn, ...
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


% --- Executes just before knn is made visible.
function knn_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to knn (see VARARGIN)

% Choose default command line output for knn
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes knn wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = knn_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputPH_Callback(hObject, eventdata, handles)
% hObject    handle to inputPH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputPH as text
%        str2double(get(hObject,'String')) returns contents of inputPH as a double


% --- Executes during object creation, after setting all properties.
function inputPH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputPH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputTemp_Callback(hObject, eventdata, handles)
% hObject    handle to inputTemp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputTemp as text
%        str2double(get(hObject,'String')) returns contents of inputTemp as a double


% --- Executes during object creation, after setting all properties.
function inputTemp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputTemp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputTaste_Callback(hObject, eventdata, handles)
% hObject    handle to inputTaste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputTaste as text
%        str2double(get(hObject,'String')) returns contents of inputTaste as a double


% --- Executes during object creation, after setting all properties.
function inputTaste_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputTaste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputOdor_Callback(hObject, eventdata, handles)
% hObject    handle to inputOdor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputOdor as text
%        str2double(get(hObject,'String')) returns contents of inputOdor as a double


% --- Executes during object creation, after setting all properties.
function inputOdor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputOdor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputFat_Callback(hObject, eventdata, handles)
% hObject    handle to inputFat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputFat as text
%        str2double(get(hObject,'String')) returns contents of inputFat as a double


% --- Executes during object creation, after setting all properties.
function inputFat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputFat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputTurbidity_Callback(hObject, eventdata, handles)
% hObject    handle to inputTurbidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputTurbidity as text
%        str2double(get(hObject,'String')) returns contents of inputTurbidity as a double


% --- Executes during object creation, after setting all properties.
function inputTurbidity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputTurbidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputColor_Callback(hObject, eventdata, handles)
% hObject    handle to inputColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputColor as text
%        str2double(get(hObject,'String')) returns contents of inputColor as a double


% --- Executes during object creation, after setting all properties.
function inputColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on button press in btnClassify.
function btnClassify_Callback(hObject, eventdata, handles)
% hObject    handle to btnClassify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pH = str2double(get(handles.inputPH, 'string'));
temp = str2double(get(handles.inputTemp, 'string'));
taste = str2double(get(handles.inputTaste, 'string'));
odor = str2double(get(handles.inputOdor, 'string'));
fat = str2double(get(handles.inputFat, 'string'));
turbidity = str2double(get(handles.inputTurbidity, 'string'));
color = str2double(get(handles.inputColor, 'string'));
k = str2double(get(handles.inputK, 'string'));

sample = [pH, temp, taste, odor, fat, turbidity, color];

% Data training
opts = detectImportOptions('milk.csv');
opts.SelectedVariableNames = (1:7);
training = readmatrix('milk.csv', opts);

% Group
opts.SelectedVariableNames = (8);
group = readmatrix('milk.csv', opts);

% Modelling
model = fitcknn(training, group, "NumNeighbors", k);
result = predict(model, sample);

% Nampilin hasil
set(handles.textHasil, 'string', result);

% --- Executes on button press in btnGenerate.
function btnGenerate_Callback(hObject, eventdata, handles)
% hObject    handle to btnGenerate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('milk.csv');
opts.SelectedVariableNames = (1:7);
allData = readmatrix('milk.csv', opts);
set(handles.table, 'data', allData);
