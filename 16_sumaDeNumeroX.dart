import 'dart:io';

//funcion principal del programa
void main() {
  int sumaTotal = 0; //acumula la suma de todos los digitos

  print('Ingrese numeros X (0 para terminar):');

  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      continue;
    }

    entrada = entrada.trim();
    if (entrada.isEmpty) {
      continue;
    }

    int? x = int.tryParse(entrada);
    if (x == null) {
      print('Entrada invalida. Intente de nuevo:');
      continue;
    }

    if (x == 0) {
      break; //fin del programa
    }

    int n = x.abs();
    if (n == 0) {
      //si el numero es 0 y no es el sentinel, suma 0
    } else {
      while (n > 0) {
        sumaTotal += n % 10;
        n ~/= 10;
      }
    }
  }

  print('La suma de todos los digitos es: $sumaTotal');
}
