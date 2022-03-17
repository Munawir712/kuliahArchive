import 'dart:io';

void main() {
	
	// for (var i = 0; i < 10; i++) {
	// 	print('Print ${i+1}');
	// }

	// var i = 0;
	// while (i < 10) {
	// 	print('print while $i');

	// 	i++;
	// }

	// var username;
	// var password;

	// stdout.write('Masukkan Username Anda : ');
	// username = stdin.readLineSync();

	// stdout.write('Masukkan Password Anda : ');
	// password = stdin.readLineSync();

	// while (username != 'wir' || password != '12345') {
	// 	stdout.writeln('Maaf Username atau password anda Salah.. Silahkan masukkan kembali');
	// 	stdout.write('Masukkan Username Anda : ');
	// 	username = stdin.readLineSync();

	// 	stdout.write('Masukkan Password Anda : ');
	// 	password = stdin.readLineSync();
	// }

	// print('Login...');

	var konfirmasi;

	do {
		print('Cetak');
		stdout.write('Cetak Lagi ? [Y/N] ');
		konfirmasi = stdin.readLineSync();
	} while (konfirmasi == 'Y');

}

