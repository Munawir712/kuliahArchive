import 'dart:io';

void main() {
	String nilaiInput;
	String namaKue = '';
	String kodeKue;
	int hargaKue;
	int jumlahKue;
	int uangBayar;
	int uangKembalian;
	int total;

	stdout.write('Masukkan Kode Kue     : ');
	nilaiInput = stdin.readLineSync();
	kodeKue = nilaiInput;

	// stdout.write('Masukkan Harga Kue    : ');
	// nilaiInput = stdin.readLineSync();
	// hargaKue = int.parse(nilaiInput == '' ? '0' : nilaiInput);

	stdout.write('Masukkan Jumlah Kue   : ');
	nilaiInput = stdin.readLineSync();
	jumlahKue = int.parse(nilaiInput == '' ? '0' : nilaiInput);

	if(kodeKue.toUpperCase() == 'RS') {
		namaKue = 'Risol';
		hargaKue = 1500;
	} else if(kodeKue.toUpperCase() == 'SM') {
		namaKue = 'Somain';
		hargaKue = 2000;
	} else if(kodeKue.toUpperCase() == 'BR') {
		namaKue = 'Bohrorom';
		hargaKue = 1000;
	} else if(kodeKue.toUpperCase() == 'NG') {
		namaKue = 'Nasi Goreng';
		hargaKue = 10000;
	} else if(kodeKue.toUpperCase() == 'BW') {
		namaKue = 'Bakwan';
		hargaKue = 1000;
	} else {
		namaKue = 'Kue tidak ada';
		hargaKue = 0;
	}


	total = hargaKue * jumlahKue;
	
	print('Nama Kue              : ' + namaKue.toUpperCase());
	print('Harga Kue             : ' + hargaKue.numberComma());
	print('==========================================================');
	print('Total pembelian       : ' + total.numberComma());

	stdout.write('Masukkan Jumlah Bayar : ');
	uangBayar = int.parse(stdin.readLineSync());

	if(uangBayar < total) {
		print('\n');
		print('Uang Anda Tidak Cukup.. Silahkan melakukan pembayaran ulang');
		print('\n');
	} else {
		uangKembalian = uangBayar - (hargaKue * jumlahKue);
		print('==========================================================');
		print('Kembalian             : ' + uangKembalian.numberComma());
		print('\n'); 

	stdout.write('Cetak Faktur ? [Y/N]');
	nilaiInput = stdin.readLineSync();

	if(nilaiInput.toUpperCase() == 'Y') {
		print('\n');
		print('==========================================================');
		print('                   GOOD HUNTER MARKET');
		print('               Jl. Mihoyo Monstand no. 14');
		print('                     Monstand City');
		print('----------------------------------------------------------');
		print('Nama Kue              : ' + namaKue.toUpperCase());
		print('Harga Kue             : ' + hargaKue.numberComma());
		print('==========================================================');
		print('Total Pembelian       : ' + total.numberComma());
		print('Total Bayar           : ' + uangBayar.numberComma());
		print('==========================================================');
		print('Kembalian             : ' + uangKembalian.numberComma());
	  print('\n'); 
	} 
	}

	

 


	

}

extension NumberExtension<T extends num> on num {
		String numberComma() => toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
}