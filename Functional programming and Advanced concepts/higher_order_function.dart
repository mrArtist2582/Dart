 // Higher Order Function
/* 
Imagine:
 (*) You want to order a coffee.
  but the café gives you the option to add some customization,
  like extra sugar or milk.

 (*) You can add these customizations by telling the café what you'd like,
  and the café will prepare your coffee based on these customizations.
*/

double calculateBaseCoffeePrice() {
  return 5.0;
}

Function addExtra(String ingrediants) {    // higher order function that contains some more functionality.
  return (double basePrice) {
    if (ingrediants == "sugar") {
      return basePrice = basePrice + 0.5;
    } else if (ingrediants == "milk") {
      return basePrice = basePrice + 0.1;
    } else {
      return basePrice;
    }
  };
}

void main(){

double  basePrice = calculateBaseCoffeePrice();

  var addSugar = addExtra("sugar");
  double PriceWithSugar = addSugar(basePrice);
  print("price with suger : ${PriceWithSugar}");

 var addMilk = addExtra("milk");
  double PriceWithMilk = addMilk(basePrice);
  print("price with milk : ${PriceWithMilk}");

}