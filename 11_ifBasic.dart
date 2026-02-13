import 'dart:io';

void main() {
  stdout.write('Introduce un numero: ');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    int? numero = int.tryParse(input);
    if (numero != null) {
      if (numero > 20) {
        print('La $numero es mayor que 18.');
      } else if (numero == 20) {
        print('La numero es exactamente 20.');
      } else {
        print('La $numero es menor que 20.');
      }
    } else {
      print('Lo que anadirse no es un numero.');
    }
  } else {
    print('No hay numero entrada.');
  }
}
