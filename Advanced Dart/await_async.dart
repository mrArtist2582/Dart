Future<String> orderPizza() async {
  await Future.delayed(Duration(seconds: 3));
  return "Pizza is Ready !!";
}

void main() async {
  print("Ordering Pizza");

  String Status = await orderPizza();
  print(Status);
  print("Eating Pizza");
}
