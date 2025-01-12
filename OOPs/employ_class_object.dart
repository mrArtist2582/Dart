import 'dart:io';

class Employee {
  String? name;
  int? id;
  String? department;
  double? salary;

  void displayDetails() {
    print("\nEmployee Details:");
    print("Name: $name");
    print("ID: $id");
    print("Department: $department");
    print("Salary(per month):₹${salary?.toStringAsFixed(2)}");
  }

  double calculateAnnualSalary() {
    // Method to calculate annual salary

    return (salary ?? 0) * 12; // " ?? " used for if emploee don't get salary then code does'nt show error . it indicates 0 by default.
  }
}

void main() {
  Employee employee = Employee();

  // Take input for the first employee
  print("Enter Employee  Name:");
  employee.name = stdin.readLineSync();

  print("Enter Employee  ID:");
  employee.id = int.parse(stdin.readLineSync()!);

  print("Enter Employee  Department:");
  employee.department = stdin.readLineSync();

  print("Enter Employee  Salary Per month:");
  employee.salary = double.parse(stdin.readLineSync()!);

  // Display details for the first employee
  employee.displayDetails();
  print("Annual Salary:₹${employee.calculateAnnualSalary().toStringAsFixed(2)}\n");
}
