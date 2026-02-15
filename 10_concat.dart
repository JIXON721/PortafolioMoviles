import 'dart:io';

void main() {
  stdout.write('What is your First Name? ');
  String? nombre = stdin.readLineSync();
  stdout.write('What is your Last Name? ');
  String? lnombre = stdin.readLineSync();
  stdout.write('What is your Middle Name? ');
  String? mnombre = stdin.readLineSync();

  print('Your Full Name is: $nombre $mnombre $lnombre');
}
