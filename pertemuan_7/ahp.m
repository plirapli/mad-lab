function [Max_Motor_Score] = ahp()
% Contoh fungsi sederhana ini akan memberikan pengetahuan mendasar
% tentang Analytical Hierarchial Process (AHP) dalam pengambilan keputusan,
% meliputi proses formulasi matriks, analisis berpasangan,
% perhitungan eigenvector, dan menentukan keputusan terbaik
% berdasar pada kriteria yang ditentukan

%% Matriks Perbandingan Berpasangan Kriteria
disp('Matriks Perbandingan Berpasangan pada Kriteria');
MBP_Kriteria = [ 
  1/1 1/2 3/1; 
  2/1 1/1 4/1;
  1/3 1/4 1/1]

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
disp('Matriks Perbandingan Berpasangan pada Alternatif Gaya');
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
disp('Matriks Perbandingan Berpasangan pada Alternatif Keandalan');
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
disp('Perbandingan Keekonimisan Bahan Bakar Alternatif Kuantitatif');
yamaha = 60;
honda = 80;
suzuki = 60;
kawasaki = 80;

AKB_Keekonomisan = [yamaha; honda; suzuki; kawasaki]

% Normalisasi
w_Keekonomisan = calc_norm(AKB_Keekonomisan)

%% ----------------
disp('Hit space key to continue');
pause();
clc;

%% Menghitung Hasil Akhir
% Membuat matriks berdasarkan hasil eigen vector alternatif tadi
w_Matriks = [ w_Gaya w_Keandalan w_Keekonomisan  ];

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

