import 'dart:io';

String cekNilai(int nilai) {
  switch (nilai) {
    case var n when n > 70:
      return 'Nilai A';
    case var n when n > 40:
      return 'Nilai B';
    case var n when n > 0:
      return 'Nilai C';
    default:
      return '';
  }
}

void main() {
  stdout.write('Masukkan nilai: ');
  int? nilai = int.tryParse(stdin.readLineSync()!);

  if (nilai != null) {
    String hasil = cekNilai(nilai);
    print(hasil.isNotEmpty ? '$nilai merupakan $hasil' : 'Nilai tidak valid.');
  } else {
    print('Input bukan angka yang valid.');
  }
}
