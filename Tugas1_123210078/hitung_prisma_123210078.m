% Program menghitung luas permukaan prisma
clc;
disp('Menghitung Luas Permukaan Prisma');
disp('---------------------------------');

% Input
aSegitiga = input('Alas Segitiga > ');
tSegitiga = input('Tinggi Segitiga > ');
tPrisma = input('Tinggi Prisma > ');

hasil = (aSegitiga * tSegitiga / 2) * tPrisma;
disp(['Luas Permukaan: ', num2str(hasil)]);