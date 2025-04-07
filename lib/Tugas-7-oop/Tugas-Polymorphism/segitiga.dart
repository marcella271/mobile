import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  double alas, tinggi, sisiA, sisiB, sisiC;

  Segitiga(this.alas, this.tinggi, this.sisiA, this.sisiB, this.sisiC);

  @override
  double get luas => 0.5 * alas * tinggi;

  @override
  double get keliling => sisiA + sisiB + sisiC;
}

