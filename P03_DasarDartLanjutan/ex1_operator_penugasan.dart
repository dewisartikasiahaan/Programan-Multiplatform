//operator penugasan
void main(List<String> args) {
  int a = 0; // Inisialisasi variabel a
  print('a = $a');
  
  a += 2;
  print('a = $a');
  
  a -= 1;
  print('a = $a');
  
  a *= 2;
  print('a = $a');
  
  a ~/= 3;
  print('a = $a');
  
  double b = 7;
  b /= a; // Perhitungan bisa menghasilkan NaN jika a = 0
  print('b = $b');
}
