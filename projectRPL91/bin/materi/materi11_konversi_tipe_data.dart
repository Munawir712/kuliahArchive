import 'dart:io';

void main() {

	String nilai1;
	String nilai2;
	int hasil;

	print('Masukkan Nilai Pertama: ');
	nilai1 = stdin.readLineSync();
	print('Masukkan Nilai Kedua: ');
	nilai2 = stdin.readLineSync();

	hasil = int.parse(nilai1) + int.parse(nilai2);

	print('\n');
	print('Hasilnya: $hasil');
	print('\n');

}