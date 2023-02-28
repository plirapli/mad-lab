% Program menghitung volume & luas permukaan prisma
function[volume, luas_permukaan] = hitung_prisma_123210078(aSegitiga, tSegitiga, tPrisma)
sisi_miring = sqrt(aSegitiga.^2 + tSegitiga.^2);
keliling_alas = aSegitiga + tSegitiga + sisi_miring;
luas_alas = aSegitiga * tSegitiga / 2;

volume = luas_alas * tPrisma;
luas_permukaan = (2 * luas_alas) + (keliling_alas * tPrisma);