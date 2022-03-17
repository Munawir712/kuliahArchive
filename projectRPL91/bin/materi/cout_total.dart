void main() {
	int total = 0;

	List<Barang> barang = [
		Barang(jumlah: 2, harga: 2000),
		Barang(jumlah: 2, harga: 3000),
	];

	for (var item in barang) {
		total += item.harga;
	}

	print(total);

}

class Barang {
	int jumlah;
	int harga;

	Barang({this.jumlah, this.harga});
}