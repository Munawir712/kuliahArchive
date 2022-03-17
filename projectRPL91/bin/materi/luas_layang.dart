import 'dart:io';

void main() {
	// Pemesanan variable
	var d1, d2, luas;

	// memasukan input dari user
	print('Masukkan diameter 1:');
	d1 = double.parse(stdin.readLineSync());
	print('Masukkan diameter 2:');
	d2 = double.parse(stdin.readLineSync());

	// mengisi nilai variable
	
	// menjelankan rumus
	luas = 0.5 * d1 * d2;

	// menampilkan hasil
	print('hasilnya: $luas');
	
	

}

