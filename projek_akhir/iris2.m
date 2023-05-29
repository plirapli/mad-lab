function varargout = iris2(varargin)
% IRIS2 MATLAB code for iris2.fig
%      IRIS2, by itself, creates a new IRIS2 or raises the existing
%      singleton*.
%
%      H = IRIS2 returns the handle to a new IRIS2 or the handle to
%      the existing singleton*.
%
%      IRIS2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IRIS2.M with the given radioButtonMale arguments.
%
%      IRIS2('Property','Value',...) creates a new IRIS2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before iris2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to iris2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help iris2

% Last Modified by GUIDE v2.5 14-May-2023 18:08:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iris2_OpeningFcn, ...
                   'gui_OutputFcn',  @iris2_OutputFcn, ...
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


% --- Executes just before iris2 is made visible.
function iris2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to iris2 (see VARARGIN)

% Choose default command line output for iris2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes iris2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = iris2_OutputFcn(hObject, eventdata, handles) 
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
allData = readtable('airline.csv');
dataSubset = allData(:, 2:24);

set(handles.tabel, 'Data', table2cell(dataSubset));
set(handles.tabel, 'ColumnName', dataSubset.Properties.VariableNames);


function radioButtonMale_Callback(hObject, eventdata, handles)
% hObject    handle to radioButtonMale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radioButtonMale as text
%        str2double(get(hObject,'String')) returns contents of radioButtonMale as a double


% --- Executes during object creation, after setting all properties.
function radioButtonMale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radioButtonMale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputFlightDistance_Callback(hObject, eventdata, handles)
% hObject    handle to inputFlightDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Mendapatkan karakter yang ditekan

% Hints: get(hObject,'String') returns contents of inputFlightDistance as text
%        str2double(get(hObject,'String')) returns contents of inputFlightDistance as a double


% --- Executes during object creation, after setting all properties.
function inputFlightDistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputFlightDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputDepartureDelay_Callback(hObject, eventdata, handles)
% hObject    handle to inputDepartureDelay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputDepartureDelay as text
%        str2double(get(hObject,'String')) returns contents of inputDepartureDelay as a double


% --- Executes during object creation, after setting all properties.
function inputDepartureDelay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputDepartureDelay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputArrivalDelay_Callback(hObject, eventdata, handles)
% hObject    handle to inputArrivalDelay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputArrivalDelay as text
%        str2double(get(hObject,'String')) returns contents of inputArrivalDelay as a double


% --- Executes during object creation, after setting all properties.
function inputArrivalDelay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputArrivalDelay (see GCBO)
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

% Get semua data
% Button group
genderValue = get(handles.buttonGroupGender, 'SelectedObject');
gender = get(genderValue, 'Value');

customerTypeValue = get(handles.buttonGroupCustomer, 'SelectedObject');
customerType = get(customerTypeValue, 'Value');

travelValue = get(handles.buttonGroupTravel,'SelectedObject');
travel = get(travelValue, 'Value');

% Dropdown
class = get(handles.dropdownClass,'Value');
disp(class);

% Slider
inflightWifi = get(handles.textInflightWifi, 'string');
departureArrivalTime = get(handles.textDepartureArrival, 'string');
onlineBooking = get(handles.textOnlineBooking, 'string');
gateLocation = get(handles.textGateLocation, 'string');
foodDrink = get(handles.textFoodDrink, 'string');
onlineBoarding = get(handles.textOnlineBoarding, 'string');
seatComfort = get(handles.textSeatComfort, 'string');
inflightEntertainment = get(handles.textInflightEntertainment, 'string');
onboardService = get(handles.textOnboardService, 'string');
legRoom = get(handles.textLegRoom, 'string');
baggageHandling = get(handles.textBaggageHandling, 'string');
checkinService = get(handles.textCheckinService, 'string');
inflightService = get(handles.textInflightService, 'string');
cleanliness = get(handles.textCleanliness, 'string');

% Input textfield
age = get(handles.inputAge, 'string');
flightDistance = get(handles.inputFlightDistance, 'string');
departureDelay = get(handles.inputDepartureDelay, 'string');
arrivalDelay = get(handles.inputArrivalDelay, 'string');

% Mengambil jumlah K
k = get(handles.inputK, 'string');

% Mengubah string menjadi double
inflightWifi = str2double(inflightWifi);
departureArrivalTime = str2double(departureArrivalTime);
onlineBooking = str2double(onlineBooking);
gateLocation = str2double(gateLocation);
foodDrink = str2double(foodDrink);
onlineBoarding = str2double(onlineBoarding);
seatComfort = str2double(seatComfort);
inflightEntertainment = str2double(inflightEntertainment);
onboardService = str2double(onboardService);
legRoom = str2double(legRoom);
baggageHandling = str2double(baggageHandling);
checkinService = str2double(checkinService);
inflightService = str2double(inflightService);
cleanliness = str2double(cleanliness);

% Mengubah string menjadi idx
age = str2double(age);
flightDistance = str2double(flightDistance);
departureDelay = str2double(departureDelay);
arrivalDelay = str2double(arrivalDelay);

k = str2double(k); 

% Membuat vektor
sample = [gender customerType age travel class flightDistance inflightWifi departureArrivalTime onlineBooking gateLocation foodDrink onlineBoarding seatComfort inflightEntertainment onboardService legRoom baggageHandling checkinService inflightService cleanliness departureDelay arrivalDelay]; 

% Data training
allData = readtable('airline.csv');
allData.(3) = grp2idx(allData.(3));
allData.(4) = grp2idx(allData.(4));
allData.(6) = grp2idx(allData.(6));
allData.(7) = grp2idx(allData.(7));
training = allData(:, 3:24);

% Group
group = allData{:, 25};

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


% --- Executes during object creation, after setting all properties.



% --- Executes during object deletion, before destroying properties.


% --- Executes during object creation, after setting all properties.
function buttonGroupGender_CreateFcn(hObject, eventdata, handles)
% hObject    handle to buttonGroupGender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object deletion, before destroying properties.
function buttonGroupGender_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to buttonGroupGender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function sliderInflightWifi_Callback(hObject, eventdata, handles)
% hObject    handle to sliderInflightWifi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textInflightWifi, 'String', num2str(sliderValue));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderInflightWifi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderInflightWifi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in dropdownClass.
function dropdownClass_Callback(hObject, eventdata, handles)
% hObject    handle to dropdownClass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns dropdownClass contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dropdownClass


% --- Executes during object creation, after setting all properties.
function dropdownClass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dropdownClass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderDepartureArrivalTime_Callback(hObject, eventdata, handles)
% hObject    handle to sliderDepartureArrivalTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textDepartureArrival, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderDepartureArrivalTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderDepartureArrivalTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderOnlineBooking_Callback(hObject, eventdata, handles)
% hObject    handle to sliderOnlineBooking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textOnlineBooking, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderOnlineBooking_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderOnlineBooking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderGateLocation_Callback(hObject, eventdata, handles)
% hObject    handle to sliderGateLocation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textGateLocation, 'String', num2str(sliderValue));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderGateLocation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderGateLocation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderFoodDrink_Callback(hObject, eventdata, handles)
% hObject    handle to sliderFoodDrink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textFoodDrink, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderFoodDrink_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderFoodDrink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderOnlineBoarding_Callback(hObject, eventdata, handles)
% hObject    handle to sliderOnlineBoarding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textOnlineBoarding, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderOnlineBoarding_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderOnlineBoarding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderSeatComfort_Callback(hObject, eventdata, handles)
% hObject    handle to sliderSeatComfort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textSeatComfort, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderSeatComfort_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderSeatComfort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderOnboardService_Callback(hObject, eventdata, handles)
% hObject    handle to sliderOnboardService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textOnboardService, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderOnboardService_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderOnboardService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderLegRoom_Callback(hObject, eventdata, handles)
% hObject    handle to sliderLegRoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textLegRoom, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderLegRoom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderLegRoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderCheckinService_Callback(hObject, eventdata, handles)
% hObject    handle to sliderCheckinService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textCheckinService, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderCheckinService_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderCheckinService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderInflightService_Callback(hObject, eventdata, handles)
% hObject    handle to sliderInflightService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textInflightService, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderInflightService_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderInflightService (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderInflightEntertainment_Callback(hObject, eventdata, handles)
% hObject    handle to sliderInflightEntertainment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textInflightEntertainment, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderInflightEntertainment_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderInflightEntertainment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderBaggageHandling_Callback(hObject, eventdata, handles)
% hObject    handle to sliderBaggageHandling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textBaggageHandling, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderBaggageHandling_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderBaggageHandling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on key press with focus on inputFlightDistance and none of its controls.
function inputFlightDistance_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to inputFlightDistance (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
key = eventdata.Key;

% Mengizinkan karakter tertentu selain angka untuk pengoperasian tombol lainnya
allowed_keys = {'backspace', 'delete', 'enter', 'return', 'tab', 'space', 'leftarrow', 'rightarrow'};
if any(strcmp(key, allowed_keys))
    return;
end

% Memeriksa apakah karakter yang ditekan adalah angka
if ~isempty(str2double(key))
    % Membiarkan karakter angka
    return;
end

% Membatasi masukan hanya angka
set(hObject, 'String', '');


% --- Executes on slider movement.
function sliderCleanliness_Callback(hObject, eventdata, handles)
% hObject    handle to sliderCleanliness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dapetin nilai slider
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.textCleanliness, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderCleanliness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderCleanliness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function inputAge_Callback(hObject, eventdata, handles)
% hObject    handle to inputAge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputAge as text
%        str2double(get(hObject,'String')) returns contents of inputAge as a double


% --- Executes during object creation, after setting all properties.
function inputAge_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputAge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
