// Operator lainnya
void main(List<String> args) {
  print(2 is int);
  print(2 is num);
  print(!(2 is String)); 
  print([1, 2, 3] is Map); 

  num a = 9, b = 10;

 
  if (a is int) {
    print(a.isOdd);
    print(a.isEven);
  }

  
  int maks = a > b ? a.toInt() : b.toInt();
  print('Nilai max dari $a dan $b adalah $maks');

  
  num? c;
  c = a ?? b; 
  print('Nilai c: $c');
}