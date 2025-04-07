import 'dart:io';

void main() {
  // Studi kasus: Game Werewolf dengan if-else
  stdout.write('Masukkan nama Anda: ');
  String? nama = stdin.readLineSync();

  stdout.write('Masukkan peran Anda (Penyihir/Guard/Werewolf): ');
  String? peran = stdin.readLineSync();

  if (nama == null || nama.isEmpty) {
    print('Nama harus diisi!');
  } else if (peran == null || peran.isEmpty) {
    print('Halo $nama, Pilih peranmu untuk memulai game!');
  } else if (peran.toLowerCase() /*mengubah huruf inputan menjadi kecil*/ == 'penyihir') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print('Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!');
  } else if (peran.toLowerCase() == 'guard') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print('Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.');
  } else if (peran.toLowerCase() == 'werewolf') {
    print('Selamat datang di Dunia Werewolf, $nama');
    print('Halo Werewolf $nama, kamu akan memakan mangsa setiap malam!');
  } else {
    print('Peran tidak dikenal. Pilih peran yang valid (Penyihir/Guard/Werewolf).');
  }
}