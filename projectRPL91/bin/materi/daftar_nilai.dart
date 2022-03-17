import 'dart:io';

void main() {
  String nama, kelas, keterangan, noInduk;
  int nilaiTIK, nilaiKTK, nilaiBTQ, jumlah;
  double nilaiRata;

  stdout.write('Masukkan Nama siswa  : ');
  nama = stdin.readLineSync();

  stdout.write('Masukkan Kelas Siswa : ');
  kelas = stdin.readLineSync();

  stdout.write('Masukkan Nilai TIK   : ');
  nilaiTIK = int.parse(stdin.readLineSync());

  stdout.write('Masukkan Nilai KTK   : ');
  nilaiKTK = int.parse(stdin.readLineSync());

  stdout.write('Masukkan Nilai BTQ   : ');
  nilaiBTQ = int.parse(stdin.readLineSync());

  jumlah = nilaiTIK + nilaiKTK + nilaiBTQ;

  nilaiRata = jumlah / 3;

  if(jumlah > 75) {
    keterangan = 'LULUS';
  } else {
    keterangan = 'TIDAK LULUS';
  }


  print('Nama siswa                  : $nama');
  print('Kelas                       : $kelas');
  print('--------------------------------------------');
  print('Nilai: ');
  print('--------------------------------------------');
  print('TIK                         : $nilaiTIK');
  print('KTK                         : $nilaiKTK');
  print('BTQ                         : $nilaiBTQ');
  print('--------------------------------------------');
  print('Jumlah Nilai                : $jumlah');
  print('Nilai Rata-rata             : $nilaiRata');
  print('============================================');
  print('Keterangan                  : $keterangan');




}