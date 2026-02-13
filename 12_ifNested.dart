import 'dart:io';

void main() {
  stdout.write('Enter a: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Enter b: ');
  int b = int.parse(stdin.readLineSync()!);
  stdout.write('Enter c: ');
  int c = int.parse(stdin.readLineSync()!);
  stdout.write('Enter d: ');
  int d = int.parse(stdin.readLineSync()!);

  int aux;
  if (a < b) {
    aux = a;
    a = b;
    b = aux;
  }

  if (a < c) {
    aux = a;
    a = c;
    c = aux;
  }

  if (a < d) {
    aux = a;
    a = d;
    d = aux;
  }

  if (b < c) {
    aux = b;
    b = c;
    c = aux;
  }

  if (b < d) {
    aux = b;
    b = d;
    d = aux;
  }

  if (c < d) {
    aux = c;
    c = d;
    d = aux;
  }

  print('Numbers in the correct order (a > b > c > d):');
  print('a: $a');
  print('b: $b');
  print('c: $c');
  print('d: $d');
}
