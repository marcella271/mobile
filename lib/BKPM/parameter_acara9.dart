void main() {
 
  tampilkanInformasiToko(); //memanggil fungsi tampilkanInformasiToko


  double totalHarga = hitungTotalHarga(50000, 2); // Harga Rp50.000, beli 2 barang
  print("Total Harga: Rp$totalHarga");

  //diskon tetap (10%)
  double totalSetelahDiskon = hitungTotalDenganDiskon(50000, 2);
  print("Total setelah diskon 10%: Rp$totalSetelahDiskon");
}


void tampilkanInformasiToko() {
  print("===== TOKO SERBA ADA =====");
  print("Promo: Diskon 10% untuk semua pembelian!\n");
}

//fungsi dengan return untuk menghitung dan 2 parameter
double hitungTotalHarga(double harga, int jumlah) {
  return harga * jumlah;
}

//diskon tetap (10%)
double hitungTotalDenganDiskon(double harga, int jumlah) {
  double total = harga * jumlah;
  double diskon = 0.1; // Diskon tetap 10%
  double potongan = total * diskon;
  return total - potongan;
}
