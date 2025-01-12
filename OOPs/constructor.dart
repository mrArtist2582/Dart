class Book {
  String title;
  String author;
  double price;

  
  Book(this.title, this.author, this.price); //   constructor

  
  Book.withDefaultPrice(this.title, this.author) : price = 9.99; // Named constructor with a default price for books without a price

  void displayDetails() {       // Method to display the details of the book
    print("Title: $title");
    print("Author: $author");
    print("Price: \$${price.toStringAsFixed(2)}");
  }
}

void main() {
  
  Book book1 = Book("The Dart Programming Language", "Gilad Bracha ", 30.00);  // Using the parameterized constructor
  book1.displayDetails();
  
  print("\n");
  Book book2 = Book.withDefaultPrice("Learn Flutter", "John Doe"); // Using the named constructor for a book with a default price
  book2.displayDetails();

 
}
