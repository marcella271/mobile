import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double get luas => 3.14 * jariJari * jariJari;

  @override
  double get keliling => 2 * 3.14 * jariJari;
}
