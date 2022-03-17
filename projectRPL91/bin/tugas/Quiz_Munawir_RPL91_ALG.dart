import 'dart:io';

void main() {
	String kode, nama, jabatan, status, divisi, jumlahAnak, ulangi;
	int gapok, tunjanganAnak, totalGaji;

	do {

		stdout.write('Masukkan Kode Pegwai       : ');
		kode = stdin.readLineSync();

		while (kode.isEmpty) {
			stdout.write('Masukkan Kode Pegwai       : ');
			kode = stdin.readLineSync();
		}

		stdout.write('Masukkan Nama Pegawai      : ');
		nama = stdin.readLineSync();

		while (nama.isEmpty) {
			stdout.write('Masukkan Nama Pegawai      : ');
			nama = stdin.readLineSync();
		}

		stdout.write('Masukkan Jumlah Anak       : ');
		jumlahAnak = stdin.readLineSync();

		while (jumlahAnak.isEmpty) {
			stdout.write('Masukkan Jumlah Anak       : ');
			jumlahAnak = stdin.readLineSync();
		}

		// cari jabatan
		if(kode.substring(2, 3).toUpperCase() == '1' ) {
			jabatan = 'Kepala';
		} else if(kode.substring(2, 3).toUpperCase() == '2') {
			jabatan = 'Staff';
		} else if(kode.substring(2, 3).toUpperCase() == '3') {
			jabatan = 'Operator';
		} else {
			jabatan = '';
		}

		// cari status
		if (kode.substring(4, 5).toUpperCase() == 'M') {
			status = 'Married';
		} else if (kode.substring(4,5).toUpperCase() == 'S') {
			status = 'Single';
			jumlahAnak = '0';
		} else {
			status = '';
		}

		// cari divisi dan gapok
		if(kode.substring(0, 1).toUpperCase() == 'A') {
			divisi = 'DISTRIBUTOR';
			gapok = 2500000;
		} else if (kode.substring(0, 1).toUpperCase() == 'B') {
			divisi = 'ENGINEERING';
			gapok = 2300000;
		} else if(kode.substring(0, 1).toUpperCase() == 'C') {
			divisi = 'PRODUKSI';
			gapok = 2000000;
		} else if(kode.substring(0, 1).toUpperCase() == 'D') {
			divisi = 'QUALITY CONTROL';
			gapok = 2600000;
		} else {
			divisi = '';
			gapok = 0;
		}

		tunjanganAnak = int.parse(jumlahAnak) * 25000;

		totalGaji = gapok + tunjanganAnak;

		print('');
		print('===================================================');
		print('                 CORPORATION');		
		print('===================================================');
		print('Kode Pegawai               : ${kode.toUpperCase()}');
		print('Nama Pegawai               : $nama');
		print('Jabatan                    : $jabatan');
		print('Status                     : $status');
		print('Divisi                     : $divisi');
		print('Jumlah Anak                : $jumlahAnak');
		print('Tunjangan Anak             : $tunjanganAnak');
		print('-------------------------------------------------');
		print('Total Gaji                 : $totalGaji');
		print('');


		stdout.write('Input Nilai Lagi ? [Y/N] : ');
		ulangi = stdin.readLineSync();

		while (ulangi.isEmpty) {
			stdout.write('Input Nilai Lagi ? [Y/N] : ');
			ulangi = stdin.readLineSync();
		}


	} while (ulangi.toUpperCase() == 'Y'); 
}