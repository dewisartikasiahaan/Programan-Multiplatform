void printString(String s, {int n = 1}) {
    if (n == null){
      n = 1;
    }
    for (int i = 0; i < n; i++) {
        print('${i + 1}. $s');
    }
}

void main(List<String> args) {
    print('Satu Argument');
    printString('Teknik Informatika');
    print('\nDua Argument');
    printString('Rekayasa Perangkat Lunak', n: 3);
}