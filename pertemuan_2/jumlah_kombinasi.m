% Program menghitung kombinasi : Jumlah_kombinasi.m
% untuk menghitung jumlah kombinasi
% dari sejumlah populasi
% Menampilkan judul program

clc;
disp('Menghitung Jumlah Kombinasi');
disp('---------------------');

% Meminta masukan dari user
n = input('Berapa mahasiswa yang ada? : ');
r = input('Berapa jumlah dalam satu team? : ');

% Menghitung kombinasi (nCr)
% faktor n = n! (jml mhs)
faktor_n = 1;
for i = 1:1:n
  faktor_n = faktor_n * i;
end

m = n - r; % m = jml_mhs - jml_tim
% faktor m = m!
faktor_m = 1;
for i = 1:1:m
  faktor_m = faktor_m * i;
end

% faktor r = r! (jml tim)
faktor_r = 1;
for i = 1:1:r
  faktor_r = faktor_r * i;
end

% Hasil akhir = n! / (n - r)! * r!
kombinasi = faktor_n / (faktor_m * faktor_r);

% Menampilkan keluaran
disp(['Jumlah kombinasi yang ada = ',num2str(kombinasi)]);