void main() {
  int tinggi = 5; // Tinggi tangga
  int mode = 1;   // 1 = Tangga naik, 2 = Tangga terbalik

  
  switch (mode) {
    case 1:
      print("Membuat Tangga Naik:");
      buatTanggaNaik(tinggi);
      break;
    case 2:
      print("Membuat Tangga Terbalik:");
      buatTanggaTurun(tinggi);
      break;
    default:
      print("Mode tidak tersedia.");
  }
}

// Fungsi untuk membuat tangga naik menggunakan for loop dan operator ternary
void buatTanggaNaik(int tinggi) { 
  for (int i = 1; i <= tinggi; i++) {
    String row = "";
    for (int j = 1; j <= i; j++) {
      // Gunakan operator ternary untu k memilih karakter
      row += (j % 2 == 0) ? "#" : "*";
    }
    print(row);
  }
}

// Fungsi untuk membuat tangga terbalik menggunakan while loop dan if-else
void buatTanggaTurun(int tinggi) {
  int i = tinggi;
  while (i > 0) { //mengecek apakah i>0 jika iya maka nilai i akan berkurang 1 disetiap perulangan nya 
    String row = "";
    int j = 1; 
    while (j <= i) {
      // Gunakan if-else untuk menentukan karakter
      if (j % 2 == 0) {
        row += "#";
      } else {
        row += "*";
      }
      j++;
    }
    print(row);
    i--;
  }
}
