import 'dart:io';

void main() {
  stdout.writeln('Enter your name:');
  String? name = stdin.readLineSync();
  stdout.writeln('Hello, $name, welcome home! :)');

  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  print('You typed: $number');
}
