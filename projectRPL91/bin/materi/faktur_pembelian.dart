import 'dart:io';

void main() {

	String namaBarang;
	int hargaSatuan, harga, jumlahBeli, pajak, subTotal;

	stdout.write('Masukkan Nama barang  : ');
	namaBarang = stdin.readLineSync();

	stdout.write('Masukkan Harga Satuan : ');
	hargaSatuan = int.parse(stdin.readLineSync());

	stdout.write('Masukkan Jumlah beli  : ');
	jumlahBeli = int.parse(stdin.readLineSync());

	harga = hargaSatuan * jumlahBeli;

	pajak = (harga * 0.10).toInt();

	subTotal = harga - pajak;

	print('\n');
	print('==============================================================');
	print('              FAKTUR PEMBELIAN TOKO SEJAHTERA');
	print('=============================================================='); 
	print('Nama barang   :' + namaBarang);
	print('Harga Satuan  :' + hargaSatuan.numberComma());
	print('Jumlah Beli   :' + jumlahBeli.numberComma());
	print('Total harga   :' + harga.numberComma());
	print('Pajak 10%     :' + pajak.numberComma());
	print('--------------------------------------------------------------');
	print('SubTotal      :' + subTotal.numberComma());


}

 extension NumberExtension<T extends num> on num {
		String numberComma() => toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
 }

	String formatCurrecy(var number) {
		return number.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
	}