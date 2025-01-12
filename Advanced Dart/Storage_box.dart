// Storage Box - Generic

class box<T> {
  T item;              // Here T can be any type of data  either Int or String
  box(this.item);

  T getItem() {
    return item;
  }
}
 
 void main(){
 
 var  numberBox = box<int>(42); // item is integer type
 print(numberBox.getItem());

 var stringBox = box<String>("Kashish"); // item is String type
 print(stringBox.getItem());
 }