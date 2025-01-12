T mixDrinks<T>(T drink1, T drink2) {
  return  drink2;  
}

void main() {


  print(mixDrinks<String>("Coffee", "Coffee")); 
  
  
  print(mixDrinks<String>("Orange Juice", "Apple Juice"));  
}
