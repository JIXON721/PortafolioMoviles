import 'dart:io';

int factorial(int n) {
  if (n < 0) {
    throw Exception("Factorial does not exist for negative numbers.");
  }
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  print("Enter a number:");
  try {
    String? input = stdin.readLineSync();
    int number = int.parse(input!);
    int result = factorial(number);
    print("The factorial of $number is: $result");
  } on FormatException {
    print("Please enter a valid number.");
  } catch (e) {
    print(e);
  }
}
