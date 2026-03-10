import 'dart:io';

int factorial(int n) {
  if (n < 0) {
    throw Exception("El factorial no existe para numeros negativos");
  }
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  print("Ingrese un numero:");

  int numero = int.parse(stdin.readLineSync()!);

  try {
    int resultado = factorial(numero);
    print("El factorial de $numero es: $resultado");
  } catch (e) {
    print(e);
  }
}
