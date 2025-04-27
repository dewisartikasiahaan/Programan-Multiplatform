import 'dart:io';

void printString(String s, {int n = 1, bool newLine = false}) {
    for (int i = 0; i < n; i++) {
        if (newLine) {
            stdout.writeln('${i + 1}. $s');
        } else {
            stdout.write('${i + 1}. $s ');
        }
    }
    if (!newLine) {
        stdout.write('\n');
    }
}

void main(List<String> args) {
    print('Satu argument');
    printString('Dart');

    print('\nDua argument dengan newLine bernilai null:');
    printString('Dart', n: 3);

    print('\nDua argument dengan n bernilai null:');
    printString('Dart', newLine: true);

    print('\nTiga argument');
    printString('Dart', n: 3, newLine: true);
}