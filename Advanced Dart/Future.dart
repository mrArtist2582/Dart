Future<String> orderPizza() {
  return Future.delayed(Duration(seconds: 2), () => "Pizza is ready!");
}

void main() {
  print("Ordering pizza...");
  orderPizza().then((status) {
    print(status);
  });
  print("Talking with friends...");
}
