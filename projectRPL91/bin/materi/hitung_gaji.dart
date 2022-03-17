import 'dart:io';

void main() {
	String nama;
	String golongan;
	double gajiPokok;
	double tunjangan;
	double transportasi;
	double total;
	double pajak;
	double gajiBersih;

	stdout.write('Masukkan Nama        : ');
	nama = stdin.readLineSync();

	stdout.write('Masukkan Golongan    : ');
	golongan = stdin.readLineSync();

	// Mencari gaji pokok, tunjangan dan transport
	if(golongan.toUpperCase() == '1A') {
		gajiPokok = 600000;
		tunjangan = 50000;
		transportasi = 100000;
	}	else if(golongan.toUpperCase() == '1B') {
		gajiPokok = 800000;
		tunjangan = 70000;
		transportasi = 100000;
	} else if(golongan.toUpperCase() =='1C') {
		gajiPokok = 1000000;
		tunjangan = 120000;
		transportasi = 100000;
	} else {
		gajiPokok = 0;
		tunjangan = 0;
		transportasi = 0;
	}

	// Mencari Total Gaji
	total = gajiPokok + tunjangan + transportasi;

	// Mencari Pajak
	if(golongan.toUpperCase() == '1A') {
		pajak = total * 0.02;
	}	else if(golongan.toUpperCase() == '1B') {
		pajak = total * 0.03;
	} else if(golongan.toUpperCase() =='1C') {
		pajak = total * 0.04;
	} else {
		pajak = 0;
	}

	// Mencari Gaji Bersih
	gajiBersih = total - pajak;


	print('\n');
	print('Gaji Pokok           : ' + gajiPokok.toString());
	print('Tunjangan            : ' + tunjangan.toString());
	print('Transport            : ' + transportasi.toString());
	print('------------------------------------------');
	print('Total Gaji           : ' + total.toString());
	print('Pajak                : ' + pajak.toString());
	print('------------------------------------------');
	print('Gaji Bersih          : ' + gajiBersih.toString());
	print('\n');

	stdout.write('Cetak Faktur ? [Y/N]');
	if(stdin.readLineSync().toUpperCase() == 'Y') {
		print('==========================================');
		print('            PT. MAJU MUNDUR');
		print('            Teyvat Monstand');
		print('==========================================');
		print('Nama Pegawai         : ' + nama);
		print('Golongan             : ' + golongan.toUpperCase());
		print('------------------------------------------');
		print('Gaji Pokok           : ' + gajiPokok.toString());
		print('Tunjangan            : ' + tunjangan.toString());
		print('Transport            : ' + transportasi.toString());
		print('------------------------------------------');
		print('Total Gaji           : ' + total.toString());
		print('Pajak                : ' + pajak.toString());
		print('------------------------------------------');
		print('Gaji Bersih          : ' + gajiBersih.toString());
		print('\n');
	}	



}