class Cart<T> {
  List<T> items = [];

  void addItems(T item) {
    items.add(item);
  }

  void showItem() {
    print("Items in your Cart:");
    for (var item in items) {
      print(item);
    }
  }
}
 
 void main(){
 
  var bookCart = Cart<String>();
  bookCart.addItems('book :Dart 1');
  bookCart.addItems('book :Dart 2');
  bookCart.addItems('book :Dart 3');
  bookCart.showItem();

var  headphoneCart = Cart<String>();
headphoneCart.addItems('Headphone:boat 3n');
headphoneCart.addItems('Headphone:Jbl 3s');
headphoneCart.showItem();
 
  var tshirtCart = Cart<int>();

  tshirtCart.addItems(12);
  tshirtCart.addItems(40);
  tshirtCart.showItem();
 }