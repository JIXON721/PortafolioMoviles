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

  try {
    String? input = stdin.readLineSync();
    int numero = int.parse(input!);
    int resultado = factorial(numero);
    print("El factorial de $numero es: $resultado");
  } on FormatException {
    print("Ingrese un numero valido.");
  } catch (e) {
    print(e);
  }
}
