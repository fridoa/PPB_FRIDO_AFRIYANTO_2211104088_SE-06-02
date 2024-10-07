import 'dart:io';

bool cekPrima(int angka) {
  if (angka < 2) return false;
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  stdout.write('Masukkan bilangan bulat: ');
  int? bilangan = int.tryParse(stdin.readLineSync()!);

  if (bilangan != null) {
    if (cekPrima(bilangan)) {
      print('$bilangan adalah bilangan prima');
    } else {
      print('$bilangan bukan bilangan prima');
    }
  } else {
    print('Input bukan bilangan yang valid.');
  }
}
