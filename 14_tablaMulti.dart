import 'dart:io';

void main() {
  while (true) {
    stdout.write('Enter a number (0 to exit): ');
    String? input = stdin.readLineSync();

    if (input == null) continue;

    int numero = int.tryParse(input) ?? -1;

    if (numero == 0) {
      print('Program is now closed.');
      break;
    }

    print('\nMultiplication Table for $numero:\n');

    for (int i = 1; i <= 50; i++) {
      print('$numero x $i = ${numero * i}');
    }

    print('');
  }
}
