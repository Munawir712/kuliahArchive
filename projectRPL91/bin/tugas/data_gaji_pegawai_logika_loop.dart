import 'dart:io';

void main() {

String nama, kode_bag, bagian, golongan, lagi;
int gajiPokok, tunjangan, pajak, gajiKotor, gajiBersih;

do {
	stdout.write('Masukkan Nama Karyawan : ');
	nama = stdin.readLineSync();
	while (nama.isEmpty) {
		stdout.write('Masukkan Nama Karyawan : ');
		nama = stdin.readLineSync();
	}

	stdout.write('Masukkan Kode Bagian   : ');
	kode_bag = stdin.readLineSync();
	while (kode_bag.isEmpty) {
		stdout.write('Masukkan Kode Bagian   : ');
		kode_bag = stdin.readLineSync();
	}

	stdout.write('Masukkan Golongan      : ');
	golongan = stdin.readLineSync();
	while (golongan.isEmpty) {
		stdout.write('Masukkan Golongan      : ');
		golongan = stdin.readLineSync();
	}

	// Mencari bagian dan tunjangan
	if(kode_bag.toUpperCase() == 'ADM'){
		bagian = 'ADMINISTRASI';
		tunjangan = 100000;
	} else if(kode_bag.toUpperCase() == 'MAN') {
		bagian = 'MANAJEMENT';
		tunjangan = 150000;
	} else if(kode_bag.toUpperCase() == 'PRS') {
		bagian = 'PERSONALIA';
		tunjangan = 900000;
	} else {
		bagian = 'no bagian';
		tunjangan = 0;
	}


	// Mencari Bagian
	if(golongan.toUpperCase() == 'A') {
		gajiPokok = 1200000;
	} else if(golongan.toUpperCase() == 'B') {
		gajiPokok = 1500000;
	} else if(golongan.toUpperCase() == 'C') {
		gajiPokok = 2000000;
	} else {
		gajiPokok = 0;
	}



	gajiKotor = gajiPokok + tunjangan;

	// mencari pajak
	pajak = (gajiKotor * 0.1).toInt();

	// mencari gaji bersih
	gajiBersih = gajiKotor - pajak;

	print('\n');
	print('Nama karyawan    : ' + nama);
	print('Kode bagian      : ' + kode_bag.toUpperCase());
	print('Bagian           : ' + bagian.toUpperCase());
	print('Golongan         : ' + golongan.toUpperCase());
	print('--------------------------------------------');
	print('Gaji Pokok       : ' + gajiPokok.toString());
	print('Tunjangan        : ' + tunjangan.toString());
	print('PPH 10%          : ' + pajak.toString());
	print('--------------------------------------------');
	print('Gaji Bersih      : ' + gajiBersih.toString());
	print('\n');

	stdout.write('Cetak Faktur ? [Y/N] ');

	if(stdin.readLineSync().toUpperCase() == 'Y') {
		print('\n');
		print('============================================');
		print('            PT. MAKMUR SELALU');
		print('              Teyvat World');
		print('           Jl. Monstand Favonius');
		print('--------------------------------------------');
		print('Nama karyawan    : ' + nama);
		print('Kode bagian      : ' + kode_bag.toUpperCase());
		print('Bagian           : ' + bagian);
		print('Golongan         : ' + golongan.toUpperCase());
		print('--------------------------------------------');
		print('Gaji Pokok       : ' + gajiPokok.toString());
		print('Tunjangan        : ' + tunjangan.toString());
		print('PPH 10%          : ' + pajak.toString());
		print('--------------------------------------------');
		print('Gaji Bersih      : ' + gajiBersih.toString());
		print('============================================');
		print('Terimakasih Sudah Datang di perusahaan kami');
		print('\n');
	}
	
	stdout.write('Mau Input data lagi ? [Y/N]');
	lagi = stdin.readLineSync();

	while (lagi.isEmpty) {
		stdout.write('Mau Input data lagi ? [Y/N]');
		lagi = stdin.readLineSync();
	}

} while (lagi.toUpperCase() == 'Y'); {
	print('Selesai');
}


}

