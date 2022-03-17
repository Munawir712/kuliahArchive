import 'dart:io';

void main(List<String> args) {
	
	String nama;
	int jam_kerja, jam_lembur, upah_kerja_kotor, upah_kerja, upah_lembur, pajak, upah_kerja_netto;

	stdout.write('Masukkan Nama Karyawan : ');
	nama = stdin.readLineSync();
	if(nama == '') {
		print('Tolong Masukkan Nama Karyawan..');

		stdout.write('Masukkan Nama Karyawan : ');
		nama = stdin.readLineSync();
	}

	stdout.write('Masukkan Jam Kerja : ');
	jam_kerja = int.parse(stdin.readLineSync());

	stdout.write('Masukkan Jam Lembur Karyawan : ');
	jam_lembur = int.parse(stdin.readLineSync());


	// Mencari upah kerja dan upah lembur
	upah_kerja = jam_kerja * 10000;
	upah_lembur = jam_lembur * 20000;

	// Mencari upah kerja kotor
	upah_kerja_kotor = upah_kerja + upah_lembur;

	// Mencari jumlah pajak
	pajak = (0.2 * upah_kerja_kotor).toInt();

	// Mencari upah kerja bersih
	upah_kerja_netto = upah_kerja_kotor - pajak;

	
	print('\n');
	print('=========================================================');
	print('               PT KERJA KERAS  ');
	print('               JL. Sini Mampir No. 12');
	print('               Banda Aceh - Aceh');
	print('=========================================================');
	print('Nama Karyawan        : $nama');
	print('Jam Kerja            : $jam_kerja');
	print('Jam Lembur           : $jam_lembur');
	print('');
	print('Upah Kerja           : ' + numberWithCommas(upah_kerja));
	print('Upah Lembur          : ' + numberWithCommas(upah_lembur));
	print('Total Upah (Kotor)   : ' + numberWithCommas(upah_kerja_kotor));
	print('Pajak                : ' + numberWithCommas(pajak));
	print('---------------------------------------------------------');
	print('Total Upah (Bersih)  : ' + numberWithCommas(upah_kerja_netto) );
	print('=========================================================');
	print('Tetap Semangat ya gan (^_^)');
	print('\n');








}

	numberWithCommas(var number) {
		return number.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
	}