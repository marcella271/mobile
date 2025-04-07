void main() {  
// Mendeklarasikan variabel usia
  String nama = 'anisa';
  int usia = 25; // Ganti dengan usia yang ingin diuji
  
  // Menggunakan operator untuk menentukan kategori usia
  String kategoriUsia = (usia >= 0 && usia <= 5) ? "Usia Dini" :
                        (usia >= 6 && usia <= 12) ? "Usia Anak-anak" :
                        (usia >= 13 && usia <= 17) ? "Usia Remaja" :
                        (usia >= 18 && usia <= 64) ? "Usia Dewasa" :
                        (usia >= 65) ? "Usia Lansia" : "Usia tidak valid";
  
  // Menampilkan hasil kategori usia
  print("Kategori usia $nama $usia tahun adalah: $kategoriUsia");  
}
