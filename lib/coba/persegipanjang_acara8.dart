void main() {
  int width = 8;  
  int height = 4; 
  
  int i = 0; // Variabel untuk baris
  while (i < height) { 
    int j = 0; // reset variabel untuk kolom 
    String row = ""; // reset satu baris
    
    while (j < width) {
      row += "#"; // Menambahkan '#' ke dalam string
      j++; // Pindah ke kolom berikutnya
    }
    
    print(row); // Cetak satu baris penuh
    i++; 
  }
}
