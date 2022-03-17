import 'dart:io';

void main() {
	String golongan, nama, ulangi;
	double pajak;
	int gajipokok, tunjangan, transportasi, totalgaji, gaber;

	do {
		// Input dari user
		stdout.write('Masukkan Nama Pegawai   :');
		nama = stdin.readLineSync();

		while (nama.isEmpty) {
			stdout.write('Masukkan Nama Pegawai   :');
			nama = stdin.readLineSync();
		}

		stdout.write('Masukkan Golongan       :');
		golongan = stdin.readLineSync();


	} while (ulangi.toUpperCase() == 'Y');
}