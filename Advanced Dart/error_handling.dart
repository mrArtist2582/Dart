import 'dart:io';

void divide(int a, int b) {
  try {
    int result = a ~/ b;
    print("result = $result");
  } catch (e) {
    print("Error :cannot devide by zero");
  } finally {
    print("Division attempt Successfully.");
  }
}

void main() {
  stdout.write("enter the 1st number :");
  String? input1 = stdin.readLineSync();

  stdout.write("enter the 2nd number :");
  String? input2 = stdin.readLineSync();

  if (input1 != null && input2 != null) {
    try {
      int a = int.parse(input1);
      int b = int.parse(input2);

      divide(a, b);
    } catch (e) {
      print("Error: please enter valid number.");
    }
  } else {
    print("Error:input cannot be null.");
  }
}
