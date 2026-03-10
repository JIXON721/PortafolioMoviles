import 'dart:io';

class Queue<T> {
  final List<T> q = [];

  void enqueue(T v) {
    q.add(v);
    print("Agregado $v.");
  }

  void dequeue() =>
      print(q.isEmpty ? "La cola está vacia." : "Eliminado ${q.removeAt(0)}.");
  void show() => print(q.isEmpty ? "La cola está vacía." : "Estado: $q");
}

void main() {
  var cola = Queue<int>();
  print("\nIngresa numero, 'dequeue', 'mostrar' o 'salir'.");

  while (true) {
    stdout.write(">");
    var input = stdin.readLineSync()?.trim().toLowerCase() ?? '';

    switch (input) {
      case 'Salir':
        return print("Goodbye");
      case 'Dequeue':
        cola.dequeue();
        break;
      case 'Mostrar':
        cola.show();
        continue;
      default:
        if (int.tryParse(input) case int n)
          cola.enqueue(n);
        else
          print("Entrada invalida.");
    }
    cola.show();
  }
}
