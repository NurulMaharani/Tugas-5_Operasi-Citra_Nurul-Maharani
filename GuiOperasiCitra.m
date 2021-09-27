function varargout = GuiOperasiCitra(varargin)
% GUIOPERASICITRA MATLAB code for GuiOperasiCitra.fig
%      GUIOPERASICITRA, by itself, creates a new GUIOPERASICITRA or raises the existing
%      singleton*.
%
%      H = GUIOPERASICITRA returns the handle to a new GUIOPERASICITRA or the handle to
%      the existing singleton*.
%
%      GUIOPERASICITRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIOPERASICITRA.M with the given input arguments.
%
%      GUIOPERASICITRA('Property','Value',...) creates a new GUIOPERASICITRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiOperasiCitra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiOperasiCitra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiOperasiCitra

% Last Modified by GUIDE v2.5 27-Sep-2021 07:56:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiOperasiCitra_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiOperasiCitra_OutputFcn, ...
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


% --- Executes just before GuiOperasiCitra is made visible.
function GuiOperasiCitra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiOperasiCitra (see VARARGIN)

% Choose default command line output for GuiOperasiCitra
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiOperasiCitra wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiOperasiCitra_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in tmblPenjumlahan.
function tmblPenjumlahan_Callback(hObject, eventdata, handles)
% hObject    handle to tmblPenjumlahan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Penjumlahan
axes(handles.axes1)
a = imread('Rani.jpg');
b = rgb2gray(a);

c = imread('Bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[960 720]);  
imshow(e)

f = b+e;

imshow (f)

% --- Executes on button press in tmblPengurangan.
function tmblPengurangan_Callback(hObject, eventdata, handles)
% hObject    handle to tmblPengurangan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Pengurangan
axes(handles.axes2)
a = imread('Rani.jpg');
b = rgb2gray(a);

c = imread('Bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[960 720]);
imshow(e)

f = b-e;

imshow (f)

% --- Executes on button press in tmblPerkalian.
function tmblPerkalian_Callback(hObject, eventdata, handles)
% hObject    handle to tmblPerkalian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Perkalian
axes(handles.axes3)
a = imread('Rani.jpg');
b = rgb2gray(a);

c=b.*2;

imshow (c)

% --- Executes on button press in tmblPembagian.
function tmblPembagian_Callback(hObject, eventdata, handles)
% hObject    handle to tmblPembagian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Pembagian
axes(handles.axes4)
a = imread('Rani.jpg');
b = rgb2gray(a);


c=b./2;

imshow (c)

% --- Executes on button press in tmblAND.
function tmblAND_Callback(hObject, eventdata, handles)
% hObject    handle to tmblAND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Logika AND
axes(handles.axes5)
a = imread('Rani.jpg');
b = rgb2gray(a);

c = imread('Bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[960 720]);
imshow(e)

f = and(b,e);

imshow (f)

% --- Executes on button press in tmblXOR.
function tmblOR_Callback(hObject, eventdata, handles)
% hObject    handle to tmblXOR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Logika OR
axes(handles.axes6)
a = imread('Rani.jpg');
b = rgb2gray(a);

c = imread('Bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[960 720]);
imshow(e)

f = or(b,e);

imshow (f)


% --- Executes on button press in tmblXOR.
function tmblXOR_Callback(hObject, eventdata, handles)
% hObject    handle to tmblXOR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Logika XOR
axes(handles.axes7)
a = imread('Rani.jpg');
b = rgb2gray(a);

c = imread('Bunga.jpg');
d = rgb2gray(c);

e = imresize(d,[960 720]);
imshow(e)

f = xor(b,e);

imshow (f)

% --- Executes on button press in tmblKeluar.
function tmblKeluar_Callback(hObject, eventdata, handles)
% hObject    handle to tmblKeluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Keluar
delete(handles.figure1)


% --- Executes on button press in tmblNOT.
function tmblNOT_Callback(hObject, eventdata, handles)
% hObject    handle to tmblNOT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Logika NOT
axes(handles.axes8)
a = imread('Rani.jpg');
b = im2bw(a, 0.5);

c = not(b);
imshow (c)


% --- Executes on button press in tmblRefleksi.
function tmblRefleksi_Callback(hObject, eventdata, handles)
% hObject    handle to tmblRefleksi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Refleksi
axes(handles.axes11)
a = imread('Bunga.jpg');
b = fliplr(a);
imshow(b)


% --- Executes on button press in tmblCitraAsli.
function tmblCitraAsli_Callback(hObject, eventdata, handles)
% hObject    handle to tmblCitraAsli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes12)
a = imread('Bunga.jpg');
imshow(a)
