import 'dart:io'; 

void main() {
  
  print("Enter your weight in kg:");
  String? weightInput = stdin.readLineSync(); 
  double weight = double.parse(weightInput!); // Convert the string to a double

  
  print("Enter your height in meters:");
  String? heightInput = stdin.readLineSync(); 
  double height = double.parse(heightInput!); 

  
  double bmi = weight / (height * height);

  
  print("Your BMI is: ${bmi.toStringAsFixed(2)}"); //It converts the bmi value into a string. It ensures the value is displayed with exactly 2 decimal places, even if the number originally had more or fewer decimals.

  
  if (bmi < 18.5) {
    print("You are Underweight.");
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print("You have a Normal weight.");
  } else if (bmi >= 25 && bmi < 29.9) {
    print("You are Overweight.");
  } else {
    print("You are Obese.");
  }
}
