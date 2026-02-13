import 'dart:io';

void main() {
  // Listas del sistema americano y sus equivalencias mexicanas.
  const List<String> usa = ['A+', 'A', 'B', 'C', 'D', 'F'];
  const List<String> mex = ['10', '9', '8', '7', '6', '5'];

  String? entrada;
  int indice = -1;

  print('Introduzca la calificación en el sistema americano:');

  // Bucle de validación: si no es válida, se vuelve a pedir.
  while (indice == -1) {
    entrada = stdin.readLineSync();
    if (entrada == null) {
      print('Ingrese una calificación válida:');
      continue;
    }

    final normalizada = entrada.trim().toUpperCase();
    indice = usa.indexOf(normalizada);

    if (indice == -1) {
      print('Ingrese una calificación válida:');
    } else {
      entrada = normalizada;
    }
  }

  print(
    'La calificación $entrada equivale a ${mex[indice]} en el sistema mexicano.',
  );
}
