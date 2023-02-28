function[selisih] = hitung_hari_123210078(tgl_awal, bln_awal, thn_awal, tgl_akhir, bln_akhir, thn_akhir)
t_awal = datetime(thn_awal, bln_awal, tgl_awal);
t_akhir = datetime(thn_akhir, bln_akhir, tgl_akhir);
selisih = between(t_awal,t_akhir,'Days');
selisih = erase(string(selisih), 'd');
selisih = str2double(selisih);