import 'dart:io';

void main() {
	var name;
	stdout.write('Silhkan masukkan name anda :');

	name = stdin.readLineSync();

	print('Nama anda adalalah: $name');

}