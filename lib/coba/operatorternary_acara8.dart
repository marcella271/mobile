import 'dart:io';

void main() {
  // Studi kasus: Menggunakan ternary operator untuk instalasi aplikasi
  stdout.write('Apakah Anda mau menginstall aplikasi? (Y/T): ');
  String? jawaban = stdin.readLineSync()/*membaca input pengguna dari terminal*/?.toUpperCase();//mengkonversi input ke huruf besar

  String hasil = (jawaban == 'Y') 
      ? 'Anda akan menginstall aplikasi dart' 
      : (jawaban == 'T') 
          ? 'Aborted' 
          : 'Input tidak valid';

  print(hasil);
}