void main() {
  int hari = 1;
  int bulan = 5;
  int tahun = 1945;

  // Cetak hari
  print('$hari ');

  // Cetak bulan dengan switch case
  switch (bulan) {
    case 1:
      print('Januari');
      break;
    case 2:
      print('Februari');
      break;
    case 3:
      print('Maret');
      break;
    case 4:
      print('April');
      break;
    case 5:
      print('Mei');
      break;
    case 6:
      print('Juni');
      break;
    case 7:
      print('Juli');
      break;
    case 8:
      print('Agustus');
      break;
    case 9:
      print('September');
      break;
    case 10:
      print('Oktober');
      break;
    case 11:
      print('November');
      break;
    case 12:
      print('Desember');
      break;
    default:
      print('Bulan tidak valid');
      break;
  }

  // Cetak tahun
  print(' $tahun');
}
