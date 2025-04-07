void main() {
  // Studi kasus: Menampilkan angka ganjil dan genap menggunakan for loop dan while loop

  // Perulangan for loop - Menampilkan angka ganjil dari 1 sampai 10
  print('Angka ganjil dari 1 sampai 10:');
  for (var i = 1; i <= 10; i++) {
    if (i % 2 != 0) { //mengecek apakah i tidak habis dibagi 2 
      print(i);
    }
  }

  print(''); // Pemberi jarak antar output

  // Perulangan while loop - Menampilkan angka genap dari 1 sampai 10
  print('Angka genap dari 1 sampai 10:');
  var i = 1;
  while (i <= 10) {
    if (i % 2 == 0) { //apakah i habis dibagi 2
      print(i);
    }
    i++;
  }
}