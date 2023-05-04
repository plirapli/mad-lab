function [Max_Motor_Score] = ahp()
% Contoh fungsi sederhana ini akan memberikan pengetahuan mendasar
% tentang Analytical Hierarchial Process (AHP) dalam pengambilan keputusan,
% meliputi proses formulasi matriks, analisis berpasangan,
% perhitungan eigenvector, dan menentukan keputusan terbaik
% berdasar pada kriteria yang ditentukan

%% Matriks Perbandingan Berpasangan Kriteria
disp('Matriks Perbandingan Berpasangan pada Kriteria');
MBP_Kriteria = [ 
  1/1 1/2 3/1 1/3; 
  2/1 1/1 4/1 1/2;
  1/3 1/4 1/1 1/4;
  3/1 2/1 4/1 1/1;
]

% Normalisasi
w_Kriteria = calc_norm(MBP_Kriteria)

% Hitung eigen vector
[m, n] = size(w_Kriteria);
for i = 1 : m
  sumRow = 0;
  for j = 1 : n
    sumRow = sumRow + w_Kriteria(i,j);
  end
  V(i) = sumRow;
end

disp('Eigen Vector');
w_Kriteria = transpose(V) / m

%% Matriks Alternatif Gaya
disp('Matriks Alternatif Kualitatif Berpasangan: Gaya');
AKB_Gaya = [ 
  1/1 1/2 2/1 1/3; 
  2/1 1/1 3/1 1/2;
  1/2 1/3 1/1 1/4;
  3/1 2/1 4/1 1/1]

% Normalisasi
w_Gaya = calc_norm(AKB_Gaya)

% Hitung eigen vector
[m, n] = size(w_Gaya);
for i = 1 : m
  sumRow = 0;
  for j = 1 : n
    sumRow = sumRow + w_Gaya(i,j);
  end
  V(i) = sumRow;
end

disp('Eigen Vector');
w_Gaya = transpose(V) / m

%% Matriks Alternatif Keandalan
disp('Matriks Alternatif Kualitatif Berpasangan: Keandalan');
AKB_Keandalan = [ 
  1/1 1/2 3/1 2/1; 
  2/1 1/1 4/1 3/1;
  1/3 1/4 1/1 1/2;
  1/2 1/3 2/1 1/1]

% Normalisasi
w_Keandalan = calc_norm(AKB_Keandalan)

% Hitung eigen vector
[m, n] = size(w_Keandalan);
for i = 1 : m
  sumRow = 0;
  for j = 1 : n
    sumRow = sumRow + w_Keandalan(i,j);
  end
  V(i) = sumRow;
end

disp('Eigen Vector');
w_Keandalan = transpose(V) / m

%% Matriks Alternatif Keekonomisan
disp('Matriks Alternatif Kuantitatif Berpasangan: Keekonomisan');
eko_yamaha = 60;
eko_honda = 80;
eko_suzuki = 60;
eko_kawasaki = 80;

AKB_Keekonomisan = [eko_yamaha; eko_honda; eko_suzuki; eko_kawasaki]

% Normalisasi
w_Keekonomisan = calc_norm(AKB_Keekonomisan)

%% Matriks Alternatif Biaya
disp('Matriks Alternatif Kuantitatif Berpasangan: Biaya');
biaya_yamaha = 16;
biaya_honda = 30;
biayar_suzuki = 15;
biaya_kawasaki = 40;

AKB_Biaya = [biaya_yamaha; biaya_honda; biayar_suzuki; biaya_kawasaki]

% Normalisasi
w_Biaya = calc_norm(AKB_Biaya)

%% ----------------
disp('Hit space key to continue');
pause();
clc;

%% Menghitung Hasil Akhir
% Membuat matriks berdasarkan hasil eigen vector alternatif tadi
w_Matriks = [ w_Gaya w_Keandalan w_Keekonomisan w_Biaya ]
 
disp('Nilai akhir untuk Yamaha, Honda, Suzuki, Kawasaki');
MC_Scores = w_Matriks * w_Kriteria

disp('Nilai motor terbaik berdasarkan manfaat (kriteria)');
Max_MC_Benefits = max(MC_Scores)

end

function [normvect ] = calc_norm(M)
  sM = sum(M);
  normvect = M./sM;
  disp('Normalisasi Matriks');
end

