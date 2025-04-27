// Operator increment (penambahan nilai dengan 1)
void main(List<String> args) {
  int a = 9, b = a; 

  print('Pre-increment');
  print('Nilai a awal: $a');
  print('++a: ${++a}'); // Pre-increment: nilai a bertambah sebelum dicetak
  print('Nilai a akhir: $a');

  print('\nPost-increment');
  print('Nilai b awal: $b');
  print('b--: ${b--}'); // Post-increment: nilai lama dicetak, baru bertambah
  print('Nilai b akhir: $b');
}
