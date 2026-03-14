import 'dart:io';

class Queue<T> {
  final List<T> items = [];
  
  void enqueue(T value) {
    items.add(value);
    print("Added: $value");
  }

  void dequeue() {
    if (items.isEmpty) {
      print("The queue is empty.");
    } else {
      var removed = items.removeAt(0);
      print("Removed: $removed");
    }
  }

  void show() {
    if (items.isEmpty) {
      print("The queue is empty.");
    } else {
      print("Current queue: $items");
    }
  }
}

void main() {
  final queue = Queue<int>();

  print("\nEnter a number, 'dequeue', 'show', or 'exit'.");

  while (true) {
    stdout.write("> ");
    String input = stdin.readLineSync()?.trim().toLowerCase() ?? "";

    switch (input) {
      case "exit":
        print("Goodbye!");
        return;
      case "dequeue":
        queue.dequeue();
        break;
      case "show":
        queue.show();
        continue;
      default:
        int? number = int.tryParse(input);
        if (number != null) {
          queue.enqueue(number);
        } else {
          print("Invalid input.");
        }
    }

    queue.show();
  }
}
