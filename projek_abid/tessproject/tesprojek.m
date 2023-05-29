function varargout = tesprojek(varargin)
% TESPROJEK MATLAB code for tesprojek.fig
%      TESPROJEK, by itself, creates a new TESPROJEK or raises the existing
%      singleton*.
%
%      H = TESPROJEK returns the handle to a new TESPROJEK or the handle to
%      the existing singleton*.
%
%      TESPROJEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESPROJEK.M with the given input arguments.
%
%      TESPROJEK('Property','Value',...) creates a new TESPROJEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tesprojek_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tesprojek_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tesprojek

% Last Modified by GUIDE v2.5 13-May-2023 22:07:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tesprojek_OpeningFcn, ...
                   'gui_OutputFcn',  @tesprojek_OutputFcn, ...
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


% --- Executes just before tesprojek is made visible.
function tesprojek_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tesprojek (see VARARGIN)

% Choose default command line output for tesprojek
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tesprojek wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tesprojek_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when entered data in editable cell(s) in tabel.
function tabel_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tabel (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tampil.
function tampil_Callback(hObject, eventdata, handles)
% hObject    handle to tampil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Membaca data dari file CSV
data = readtable('Hostel.csv');
dataSubset = data(:, 2:15);

% Mengisi tabel di GUI dengan data CSV
set(handles.tabel, 'Data', table2cell(dataSubset));
