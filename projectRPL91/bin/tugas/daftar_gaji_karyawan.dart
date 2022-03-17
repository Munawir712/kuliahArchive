import 'dart:io';

void main() {
	String nama, kode, golongan, jabatan;
	int jamKerja, gajiPokok, uangLembur, tunjangan, bonus, gajiKotor, gajiBersih;
	double pph;

	stdout.write('Masukkan Nama Karyawan     : ');
	nama = stdin.readLineSync();

	stdout.write('Masukkan Kode              : ');
	kode = stdin.readLineSync();

	stdout.write('Masukkan Golongan          : ');
	golongan = stdin.readLineSync();

	stdout.write('Masukkan Jam Kerja         : ');
	jamKerja = int.parse(stdin.readLineSync());

	// cari jabatan
	if(kode.toUpperCase() == 'B') {
		jabatan = 'Keuangan';
		tunjangan = 500000;
	} else if(kode.toUpperCase() == 'K') {
		jabatan = 'Kepala';
		tunjangan = 400000;
	} else if(kode.toUpperCase() == 'M') {
		jabatan = 'Mandor';
		tunjangan = 300000;
	} else if(kode.toUpperCase() == 'T') {
		jabatan = 'Tukang';
		tunjangan = 200000;
	} else  {
		jabatan = '';
		tunjangan = 0;
	}

	// cari gaji pokok
	if(golongan.toUpperCase() == 'I') {
		gajiPokok = 2500000;
	} else if(golongan.toUpperCase() == 'II') {
		gajiPokok = 3250000;
	} else if(golongan.toUpperCase() == 'III') {
		gajiPokok = 3600000;
	} else if(golongan.toUpperCase() == 'IV') {
		gajiPokok = 5000000;
	} else {
		gajiPokok = 0;
	}

	// uang lembur
	if(jamKerja > 150) {
		uangLembur = 50000;
	} else  {
		uangLembur = 0;
	}

	// bonus 
	if(jabatan == 'Tukang' && jamKerja > 160) {
		bonus = 250000;
	} else {
		bonus = 0;
	}

	// mencari gaji kotor
	gajiKotor = gajiPokok + tunjangan + uangLembur + bonus;

	// mencari pph
	if(gajiKotor > 4000000) {
		pph = gajiKotor * 0.15;
	} else {
		pph = 0;
	}

	// mencari gaji bersih 
	gajiBersih = (gajiKotor - pph).toInt();


	// menampilkan hasil
	print('\n');
	print('============================================');
	print('           DAFTAR GAJI KARYAWAN');
	print('============================================');
	print('Nama Karyawan               : $nama');
	print('Kode                        : $kode');
	print('Golongan                    : $golongan');
	print('Jabatan                     : $jabatan');
	print('Jam Kerja                   : $jamKerja');
	print('Gaji Pokok                  : $gajiPokok');
	print('Uang Lembur                 : $uangLembur');
	print('Tunjangan                   : $tunjangan');
	print('Bonus                       : $bonus');
	print('--------------------------------------------');
	print('Gaji Kotot                  : $gajiKotor');
	print('Pph 15%                     : $pph');
	print('Gaji Bersih                 : $gajiBersih');


}