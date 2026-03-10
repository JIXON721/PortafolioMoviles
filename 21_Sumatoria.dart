import 'dart:io';

int factorial(int num) {
  if (num < 0) {
    throw ArgumentError(
      'El factorial no esta definido para numeros negativos.',
    );
  }
  if (num <= 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

void main() {
  stdout.write('Ingresa el número para calcular el factorial: ');

  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int num = int.parse(input);
      int resultado = factorial(num);
      stdout.writeln('El factorial de $num es: $resultado');
    } catch (e) {
      stdout.writeln('Error: Por favor, ingresa un número entero valido.');
    }
  } else {
    stdout.writeln('No se ingreso ningun valor.');
  }
}
