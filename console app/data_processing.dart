// calculations or  data manupulation


import 'dart:io';

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);
  print("The square of $num is ${num * num}");
}
