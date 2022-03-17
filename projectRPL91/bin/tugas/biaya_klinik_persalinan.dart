import 'dart:io';

void main() {
	
	String namaPasien, kelas, penanganan;
	int lamaInap, biayaInap, biayaLayanan, biayaPersalinan, total;

	stdout.write('Masukkan Nama Pasien   : ');
	namaPasien = stdin.readLineSync();

	stdout.write('Masukkan Kelas         : ');
	kelas = stdin.readLineSync();
	
	stdout.write('Masukkan Penanganan    : ');
	penanganan = stdin.readLineSync();

	stdout.write('Lama inap              : ');
	lamaInap = int.parse(stdin.readLineSync());

	// cari biaya inap dan layanan
	if(kelas.toUpperCase() == 'A') {
		biayaInap = 300000 * lamaInap;
		biayaLayanan = 100000 * lamaInap;
	} else if(kelas.toUpperCase() == 'B') {
		biayaInap = 200000 * lamaInap;
		biayaLayanan = 70000 * lamaInap;
	} else if(kelas.toUpperCase() == 'C') {
		biayaInap = 100000 * lamaInap;
		biayaLayanan = 50000 * lamaInap;
	} else {
		biayaInap = 0;
		biayaLayanan = 0;
		lamaInap = 0;
	}

	// cari biaya persalinan
	if(penanganan.toUpperCase() == 'DOKTER') {
		biayaPersalinan = 1000000;
	} else if(penanganan.toUpperCase() == 'BIDAN') {
		biayaPersalinan = 750000;
	}

	// cari total
	total = biayaInap + biayaLayanan + biayaPersalinan;

	print('\n');
	print('Nama Pasien            : $namaPasien');
	print('Kelas                  : $kelas');
	print('Penanganan             : $penanganan');
	print('Lama Inap              : $lamaInap Hari');
	print('-----------------------------------------------------');
	print('Biaya                  :');
	print('-----------------------------------------------------');
	print('Inap                   : $biayaInap');
	print('Layanan                : $biayaLayanan');
	print('Persalinan             : $biayaPersalinan');
	print('-----------------------------------------------------');
	print('Total Bayar            : $total');

	print('\n');
	stdout.write('Cetak Faktur.. ?  [Y/N]');
	if(stdin.readLineSync().toUpperCase() == 'Y') {
		print('=====================================================');
		print('             KLINIK PERSALINAN "TEYVAT"');
		print('               Jl. Monstant Favonius');
		print('                      Genshin');
		print('-----------------------------------------------------');
		print('Nama Pasien            : $namaPasien');
		print('Kelas                  : $kelas');
		print('Penanganan             : $penanganan');
		print('Lama Inap              : $lamaInap Hari');
		print('-----------------------------------------------------');
		print('Biaya :');
		print('-----------------------------------------------------');
		print('Inap                   : $biayaInap');
		print('Layanan                : $biayaLayanan');
		print('Persalinan             : $biayaPersalinan');
		print('-----------------------------------------------------');
		print('Total Bayar            : $total');
	} 

	
	


}