/*

class : its a blueprint for creating objects.

objects : its a instance of a class.
 
 */

import 'dart:io';

class Calculator {
  double? n1;
  double? n2;

  double add() {
    return n1! + n2!;
  }

  double sub() {
    return n1! - n2!;
  }

  double mul() {
    return n1! * n2!;
  }

  double div() {
    if (n2 != 0) {
      return n1! / n2!;
    } else {
      print("Division by zero is not allowed.");
    }
    return double.nan;
  }

  double mod() {
    return n1! % n2!;
  }
}

void main() {
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);


  Calculator cal = Calculator();              // creating object of class calculator


  cal.n1 = num1;                           // assigning values to the object.
  cal.n2 = num2;



  print("\nresults:");                     // operations to be perform
  print("Addition :${cal.add()}");
  print("Subtraction : ${cal.sub()}");
  print("Multiplication: ${cal.mul()}");
  print("Division: ${cal.div()}");
  print("Modulus: ${cal.mod()}");
}
