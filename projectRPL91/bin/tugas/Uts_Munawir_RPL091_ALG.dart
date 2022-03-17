import 'dart:io';

void main() {

	String nama_pemesan, kode_kamar, jenis_kamar, no_pilihan, fasilitas_tambahan, lama_inap, kg, ulangi;
	int tarif_kamar, total_tarif_kamar, harga_fasilitas_tambahan,total;
	double diskon = 0;

	do {
		stdout.write('Masukkan Nama Pemesan      : ');
		nama_pemesan = stdin.readLineSync();
		while(nama_pemesan.isEmpty) {
			stdout.write('Masukkan Nama Pemesan      : ');
			nama_pemesan = stdin.readLineSync();
		}

		stdout.write('Masukkan Kode Jenis Kamar  : ');
		kode_kamar = stdin.readLineSync();
		while (kode_kamar.isEmpty) {
			stdout.write('Masukkan Kode Jenis Kamar  : ');
			kode_kamar = stdin.readLineSync();
		}

		stdout.write('Masukkan Lama inap         : ');
		lama_inap = stdin.readLineSync();
		while(lama_inap.isEmpty) {
			stdout.write('Masukkan Lama inap         : ');
			lama_inap = stdin.readLineSync();
		}

		print('\n');
		print('Pilih Fasilitas Tambahan :');
		print('1. LAUNDRY    2. ANTAR JEMPUT   0. Tidak Memilih');
		stdout.write('Pilih No. : ');
		no_pilihan = stdin.readLineSync();
		while(no_pilihan.isEmpty) {
			print('\n');
			print('Pilih Fasilitas Tambahan :');
			print('1. LAUNDRY    2. ANTAR JEMPUT   0. Tidak Memilih');
			stdout.write('Pilih No. : ');
			no_pilihan = stdin.readLineSync();
		}

		// fasilitas Tambahan 
		if(no_pilihan == '1') {
			fasilitas_tambahan = 'LAUNDRY';
			stdout.write('Masukkan berapa Kg  : ');
			kg = stdin.readLineSync();
			while(kg.isEmpty) {
				stdout.write('Masukkan berapa Kg  : ');
				kg = stdin.readLineSync();
			}
			harga_fasilitas_tambahan = 10000 * int.parse(kg);
		} else if(no_pilihan == '2' ) {
			fasilitas_tambahan = 'ANTAR JEMPUT';
			harga_fasilitas_tambahan = 150000;
		} else {
			fasilitas_tambahan = '-';
			harga_fasilitas_tambahan = 0;
		}
		

		// Jenis Kamar
		if(kode_kamar.toUpperCase() == 'DLX') {
			jenis_kamar = 'DELUXE';
			tarif_kamar = 500000;
		} else if(kode_kamar.toUpperCase() == 'FMY') {
			jenis_kamar = 'FAMILY';
			tarif_kamar = 900000;
		} else if(kode_kamar.toUpperCase() == 'PRS') {
			jenis_kamar = 'PRESIDENT';
			tarif_kamar = 1500000;
			diskon = fasilitas_tambahan == 'ANTAR JEMPUT' ? tarif_kamar * 0.20 : 0;
		} else {
			jenis_kamar = '';
			tarif_kamar = 0;
			diskon = 0;
		}
		total_tarif_kamar = tarif_kamar * int.parse(lama_inap);

		total = (total_tarif_kamar + harga_fasilitas_tambahan - diskon).toInt();


		// tampilkan hasil
		print('\n');
		print('==============================================');
		print('             HOTEL INDAH SEJAHTRA');
		print('               BUKTI PEMBAYARAN ');
		print('==============================================');
		print('Nama Pemesan                     : $nama_pemesan');
		print('Kode Jenis Kamar                 : $kode_kamar');
		print('Jenis Kamar                      : $jenis_kamar');
		print('Lama Inap                        : $lama_inap Malam');
		print('Tarif Kamar / Malam              : $tarif_kamar');
		print('Total Tarif Kamar                : $total_tarif_kamar');
		print('-------------------------------------------');
		print('Fasilitas Tambahan               : $fasilitas_tambahan');
		if(fasilitas_tambahan == 'LAUNDRY') print('Berat Laundry                    : $kg Kg');
		print('Biaya Fasilitas Tambahan         : $harga_fasilitas_tambahan');
		print('-------------------------------------------');
		print('Diskon                           : $diskon');
		print('Total Harga                      : $total');
		print('\n');

		stdout.write('Input Lagi [Y/N] ? ');
		ulangi = stdin.readLineSync();
		while(ulangi.isEmpty) {
			stdout.write('Input Lagi  [Y/N] ? ');
			ulangi = stdin.readLineSync();
		}

	} while (ulangi.toUpperCase() == 'Y');

}