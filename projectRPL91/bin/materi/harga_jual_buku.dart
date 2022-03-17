import 'dart:io';

void main() {
	String judul;
	String kategori;
	int harga;
	double potonganHarga;
	double diskon;
	int hargaJual;


	stdout.write('masukkan judul		:');
	judul = stdin.readLineSync();

	stdout.write('masukkan kategori	:');
	kategori = stdin.readLineSync();

	stdout.write('masukkan harga		:');
	harga = int.parse(stdin.readLineSync());



	if(kategori == 'A') {
		diskon = 0.25;
	} else if(kategori == 'B') {
		diskon = 0.50;
	} else if(kategori == 'C') {
		diskon = 0.75;
	}

	potonganHarga = harga * diskon;

	print('Diskon    	:' + (potonganHarga/harga * 100).toString() + '%');
	print('Harga jual	:' + (harga-potonganHarga).toString());

}