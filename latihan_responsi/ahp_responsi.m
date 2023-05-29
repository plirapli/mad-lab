function [] = ahp()
%AHP Summary of this function goes here
%   Detailed explanation goes here
%% MBP Kriteria
disp('Matriks perbandingan kriteria:');
mpbKriteria = [
  1/1 3/1 2/1 2/1;
  1/3 1/1 1/3 1/2;
  1/2 3/1 1/1 1/1;
  1/2 2/1 1/1 1/1;
]

wKriteria = calc_norm(mpbKriteria)

% Hitung eigen vector
[m, n] = size(wKriteria);
for i = 1 : m
  sumRow = 0;
  for j = 1 : n
    sumRow = sumRow + wKriteria(i,j);
  end
  V(i) = sumRow;
end

disp('Eigen Vector');
wKriteria = transpose(V) / m

%% Matriks alternatif kualitas
disp('Matriks Alternatif Kuantitatif Berpasangan: Kualitas');
ptA = 85;
ptB = 80;
ptC = 90;
ptD = 95;

akbKualitas = [ptA; ptB; ptC; ptD]

% Normalisasi
wKualitas = calc_norm(akbKualitas)

%% Matriks alternatif flesibiltas pembayaran
disp('Matriks alternatif fleksibilitas pembayaran');
mFleksibiltas = [
  1/1 2/1 3/1 4/1;
  1/2 1/1 2/1 3/1;
  1/3 1/2 1/1 2/1;
  1/4 1/3 1/2 1/1;
]

wFleksibilitas = calc_norm(mFleksibiltas)

% Hitung eigen vector
[m, n] = size(wFleksibilitas);
for i = 1 : m
  sumRow = 0;
  for j = 1 : n
    sumRow = sumRow + wFleksibilitas(i,j);
  end
  V(i) = sumRow;
end

disp('Eigen Vector');
wFleksibilitas = transpose(V) / m

%% Alternatif pemenuhan pesanan
disp('Matriks alternatif pemenuhan pesanan');
mPemenuhan = [
  1/1 2/1 1/2 1/3;
  1/2 1/1 1/3 1/4;
  2/1 3/1 1/1 1/2;
  3/1 4/1 2/1 1/1;
]

wPemenuhan = calc_norm(mPemenuhan)

% Hitung eigen vector
[m, n] = size(wPemenuhan);
for i = 1 : m
  sumRow = 0;
  for j = 1 : n
    sumRow = sumRow + wPemenuhan(i,j);
  end
  V(i) = sumRow;
end

disp('Eigen Vector');
wPemenuhan = transpose(V) / m

%% Alternatif Waktu
disp('Matriks alternatif waktu');
mWaktu = [
  1/1 2/1 3/1 1/2;
  1/2 1/1 2/1 1/3;
  1/3 1/2 1/1 1/4;
  2/1 3/1 4/1 1/1;
]

wWaktu = calc_norm(mWaktu)

% Hitung eigen vector
[m, n] = size(wWaktu);
for i = 1 : m
  sumRow = 0;
  for j = 1 : n
    sumRow = sumRow + wWaktu(i,j);
  end
  V(i) = sumRow;
end

disp('Eigen Vector');
wWaktu = transpose(V) / m

%% ----------------
disp('Hit space key to continue');
pause();
clc;

%% Menghitung Hasil Akhir
% Membuat matriks berdasarkan hasil eigen vector alternatif tadi
wMatriks = [ wKualitas wFleksibilitas wPemenuhan wWaktu]
 
disp('Nilai akhir untuk masing-masing suplier');
MC_Scores = wMatriks * wKriteria

disp('Supplier terbaik berdasarkan kriteria');
Max_MC_Benefits = max(MC_Scores)

end

function [normvect ] = calc_norm(M)
  sM = sum(M);
  normvect = M./sM;
  disp('Normalisasi Matriks');
end

