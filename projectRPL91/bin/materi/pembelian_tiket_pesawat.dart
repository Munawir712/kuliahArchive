import 'dart:io';

void main() {
	String kodeTiket;
	String namaPenumpang;
	String tglPembelian;
	String tujuan;
	String kelas;
	String menu;
	int harga;
	int potonganHarga;
	double diskon;
	int hargaJual;

	
	stdout.write('Masukkan Kode Tiket         : ');
	kodeTiket = stdin.readLineSync();

	stdout.write('Masukkan Nama penumpang     : ');
	namaPenumpang = stdin.readLineSync();

	stdout.write('Masukkan Tanggal Pembelian  : ');
	tglPembelian = stdin.readLineSync();

	// mencari tujuan dan harga
	if(kodeTiket.toUpperCase().contains('AAA')) {
		tujuan = 'Jakarta Yogya';
		harga = 350000;
	} else if(kodeTiket.toUpperCase().contains('BBB')) {
		tujuan = 'Yogyakarta Jakarta';
		harga = 300000;
	} else if(kodeTiket.toUpperCase().contains('CCC')) {
		tujuan = 'Jakarta Solo';
		harga = 375000;
	} else  {
		tujuan = '';
		harga = 0;
	}
	
	// mencari menu 
	if(kodeTiket.toUpperCase().contains('P1')) {
		menu = 'Paket A';
		harga += 25000;
	} else if(kodeTiket.toUpperCase().contains('P2')) {
		menu = 'Paket B';
		harga += 37500;
	} else if(kodeTiket.toUpperCase().contains('P3')) {
		menu = 'Paket C';
		harga += 50000;
	} else  {
		menu = '';
	}

	// mencari kelas 
	if(kodeTiket.toUpperCase().contains('X')) {
		kelas = 'VIP';
		diskon = 0.20;
	} else if(kodeTiket.toUpperCase().contains('Y')) {
		kelas = 'BISNIS';
		diskon = 0.15;
	} else if(kodeTiket.toUpperCase().contains('Z')) {
		kelas = 'EKONOMI';
		diskon = 0.10;
	} else  {
		kelas = '';
		diskon = 0;
	}	

	// mencari harga Jual
	potonganHarga = (harga * diskon).toInt();
	hargaJual = harga - potonganHarga;   
	
	print('\n');
	print('==========================================');
	print('   Pembelia Tiket Pesawat "Save Air"');
	print('==========================================');
	print('Kode Tiket                  : $kodeTiket');
	print('Nama penumpang              : $namaPenumpang');
	print('Tanggal pembelian           : $tglPembelian');
	print('------------------------------------------');
	print('Tujuan                      : $tujuan');
	print('Harga                       : $harga');
	print('Kelas                       : $kelas');
	print('Menu                        : $menu');
	print('------------------------------------------');
	print('Diskon                      : ${(potonganHarga/harga * 100).toInt()}%');
	print('Harga Jual                  : $hargaJual');








}