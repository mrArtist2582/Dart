int multiply(int a, int b) {
  return a * b; 
}

void greet() {
  print("Hello, Dart!");
}

void kd(String name) {
  print("Hello, $name!");
}

void printMessage(String message) {
  print(message);
}

void main() {
  print("=> This is Function without parameter");
  greet();

  print("=> This is Function with parameter");
  kd("Kashish");

  print("=> This is Function with Return type.");
  int result = multiply(5, 3); 
  print("o The multiplication is $result.");

  print("=> This is Function without Return type.");
  printMessage("o This is a message.");
}
