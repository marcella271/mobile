import 'bangun_datar.dart';

class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double get luas => sisi * sisi;

  @override
  double get keliling => 4 * sisi;
}
