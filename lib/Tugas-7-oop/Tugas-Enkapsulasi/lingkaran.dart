class Lingkaran {
  double _jariJari = 0;//dengan _ berarti variabel tersebut private

  // Constructor dengan validasi agar jari-jari tetap positif
  Lingkaran(double jariJari) {
    this.jariJari = jariJari;
  } 

  // Setter dengan validasi
  set jariJari(double value) {
    _jariJari = value < 0 ? value * -1 : value;
  }

  // Getter jari-jari
  double get jariJari => _jariJari;

  // Getter luas lingkaran
  double get luas => 3.14 * _jariJari * _jariJari;
}
