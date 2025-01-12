  // Real-World Example: Company Employees Hierarchy

  
class Employee {
  String name;
  int id;
  double salary;

 
  Employee(this.name, this.id, this.salary);  // Constructor for the Employee class

  
  void displayEmployeeDetails() {            // Method to display basic details of an employee
    print("Employee Name: $name");
    print("Employee ID: $id");
    print("Employee Salary: \$${salary.toStringAsFixed(2)}");
  }

  
  double calculateAnnualSalary() {       // Method to calculate annual salary
    return salary  * 12;
  }
}


class Manager extends Employee {       //  Manager (inherits from Employee)
  int teamSize;

  
  Manager(String name, int id, double salary, this.teamSize) 
      : super(name, id, salary);     // Constructor for the Manager class that calling the parent constructor

  
  void displayManagerDetails() {     // Method to display manager-specific details
    displayEmployeeDetails();
    print("Team Size: $teamSize");
  }

  
  @override                                    // Overriding calculateAnnualSalary method for Managers
  double calculateAnnualSalary() {
    double bonus = 0.1 * salary * teamSize; // Managers get a bonus based on team size
    return super.calculateAnnualSalary() + bonus;
  }
}


class Developer extends Employee {           //  Developer (inherits from Employee)
  String programmingLanguage;

 
  Developer(String name, int id, double salary, this.programmingLanguage)
      : super(name, id, salary);             // Constructor for the Developer class that  calling the parent constructor

 
  void displayDeveloperDetails() {             // Method to display developer-specific details
    displayEmployeeDetails();
    print("Programming Language: $programmingLanguage");
  }

  @override                                           // Overriding calculateAnnualSalary method for Developers
  double calculateAnnualSalary() {
    double bonus = 0.05 * salary; // Developers get a smaller bonus
    return super.calculateAnnualSalary() + bonus;
  }
}

void main() {
                                                          // Creating instances of Employee, Manager, and Developer
  Employee employee1 = Employee("John Doe", 101, 5000);
  Manager manager1 = Manager("Alice Smith", 102, 7000, 5);
  Developer developer1 = Developer("Bob Johnson", 103, 4000, "Dart");

                                                           // Display details and annual salaries
  print("Employee  Details:");
  employee1.displayEmployeeDetails();
  print("Annual Salary: \$${employee1.calculateAnnualSalary().toStringAsFixed(2)}\n");

  print("Manager  Details:");
  manager1.displayManagerDetails();
  print("Annual Salary: \$${manager1.calculateAnnualSalary().toStringAsFixed(2)}\n");

  print("Developer Details:");
  developer1.displayDeveloperDetails();
  print("Annual Salary: \$${developer1.calculateAnnualSalary().toStringAsFixed(2)}\n");
}
