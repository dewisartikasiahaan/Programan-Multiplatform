//variabel var
void main(List<String> args) {
  var x;

  x = 10; // Memberikan nilai awal agar tidak error
  print("Nilai a\t: " + x.toString());
  print("Tipe a\t: " + x.runtimeType.toString());

  x = 123.456;
  print("Nilai a\t: " + x.toString());
  print("Tipe a\t: " + x.runtimeType.toString());

  x = true;
  print("Nilai a\t: " + x.toString());
  print("Tipe a\t: " + x.runtimeType.toString());

  x = 'Dart';
  print("Nilai a\t: " + x.toString());
  print("Tipe a\t: " + x.runtimeType.toString());
}
