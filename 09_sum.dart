import 'dart:io';

void main() {
  String? input1 = stdin.readLineSync();
  int number1 = int.parse(input1!);

  String? input2 = stdin.readLineSync();
  int number2 = int.parse(input2!);
  int sum = number1 + number2;

  print("$number1 + $number2 = $sum");
}
