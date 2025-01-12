/*  
   Extension method

   In a real store, you might have many items with different prices. 
   Instead of writing a discount calculation method every time,
   you need to calculate the discounted price, 
   you can use an extension method on double to easily calculate discounts 
   wherever needed, making your code cleaner and more reusable.

*/
extension Discount on double {
  double applyDiscount(double discountPercentage) {
    double discountAmount = this * discountPercentage / 100;
    return this - discountAmount;
  }
}
void main() {
  double original_price1 = 100.0;
  double original_price2 = 245.0;

  // Print the price after applying the discount without using $ before the price
  print("Price after 10% discount: ${original_price1.applyDiscount(10)}");
  print("Price after 10% discount: ${original_price2.applyDiscount(10)}");
}

