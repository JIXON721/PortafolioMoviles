import 'dart:io';

void Prime(int n) {
  bool isPrime = true;

  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime) {
    stdout.writeln("The number is a prime number.");
  } else {
    stdout.writeln("The number is not a prime number.");
  }
}

void main() {
  int n = 0;
  while (n < 2) {
    stdout.write("Enter a number (needs to be 2 or higher): ");
    n = int.parse(stdin.readLineSync()!);
  }

  Prime(n);
}
