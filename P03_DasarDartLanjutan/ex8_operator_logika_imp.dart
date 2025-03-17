//implementasi operator logika
import 'dart:io';

void main(List<String> args) {
  int a;
  stdout.write('Masukkan nilai a [0..9]: ');
  a = int.parse(stdin.readLineSync()?? "0");

  if (a >= 0 && a <= 9) {
    print('Anda memasukkan niali: $a');
  } else {
    print('Nilai yang diamsukkan harus 0..9');
  }
}