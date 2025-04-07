import 'lingkaran.dart';
import 'persegi.dart';
import 'segitiga.dart';

void main() {
  Lingkaran lingkaran = Lingkaran(7);
  Persegi persegi = Persegi(4);
  Segitiga segitiga = Segitiga(3, 4, 3, 4, 5);

  print("Luas Lingkaran: ${lingkaran.luas}, Keliling: ${lingkaran.keliling}");
  print("Luas Persegi: ${persegi.luas}, Keliling: ${persegi.keliling}");
  print("Luas Segitiga: ${segitiga.luas}, Keliling: ${segitiga.keliling}");
}
