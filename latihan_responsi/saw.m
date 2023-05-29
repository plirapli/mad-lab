function varargout = saw(varargin)
% SAW MATLAB code for saw.fig
%      SAW, by itself, creates a new SAW or raises the existing
%      singleton*.
%
%      H = SAW returns the handle to a new SAW or the handle to
%      the existing singleton*.
%
%      SAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAW.M with the given input arguments.
%
%      SAW('Property','Value',...) creates a new SAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before saw_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to saw_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help saw

% Last Modified by GUIDE v2.5 29-May-2023 23:07:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @saw_OpeningFcn, ...
                   'gui_OutputFcn',  @saw_OutputFcn, ...
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


% --- Executes just before saw is made visible.
function saw_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to saw (see VARARGIN)

% Choose default command line output for saw
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes saw wait for user response (see UIRESUME)
% uiwait(handles.figure1);
allData = readtable('data-kamera.xlsx');
% dataSubset = allData(:, 1:8);

uiTable = handles.tableData;
set(uiTable, 'Data', table2cell(allData));
set(uiTable, 'ColumnName', allData.Properties.VariableNames);
set(uiTable, 'ColumnWidth', 'auto');

% Menyesuaikan ukuran tabel
% set(uiTable, 'Position', [x y width height]);

% Menampilkan tabel
set(uiTable, 'Visible', 'on');

% --- Outputs from this function are returned to the command line.
function varargout = saw_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnProses.
function btnProses_Callback(hObject, eventdata, handles)
% hObject    handle to btnProses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Mengambil data dari xlsx
allData = readtable('data-kamera.xlsx');
dataSubset = table2array(allData(:, 4:7));
alternatifLink = table2array(allData(:, 8:8));

% Menentukan atribut (mana cost mana benefit)
atribut = [1 1 0 0];

% Menentukan bobot
bobot = [0.25 0.15 0.2 0.4];

% Tahapan 1. normalisasi matriks
[m n] = size(dataSubset); % Matriks m x n dengan ukuran sebanyak variabel x (input)
R = zeros(m,n); %membuat matriks R, yang merupakan matriks kosong
Y = zeros(m,n); %membuat matriks Y, yang merupakan titik kosong

for j = 1:n,
  if atribut(j) == 1, % Statement untuk kriteria dengan atribut keuntungan
    R(:,j) = dataSubset(:,j)./max(dataSubset(:,j));
  else
    R(:,j) = min(dataSubset(:,j))./dataSubset(:,j);
  end;
end;

for i = 1:m,
  V(i)= sum(bobot.*R(i,:));
end;

hasil = transpose(V);
alternatif = transpose(alternatifLink);

% Sorting
[sortedHasil, idx] = sort(hasil, 'descend'); % Mengurutkan hasil secara descending
sortedAlternatif = alternatif(idx); % Mengurutkan alternatif berdasarkan indeks hasil

hasil = [ sortedAlternatif', num2cell(sortedHasil)];
set(handles.tableHasil, 'Data', hasil(1:10, :));

% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
