import 'dart:io';

class ProductSearchSystem {
 
  List<String> products = ['Laptop', 'Smartphone', 'Headphones', 'Tablet', 'Smartwatch'];

 
  void searchProduct(String productName) {
    try {
      if (productName.isEmpty) {
        throw Exception('Search query cannot be empty.');
      }
      
      
      if (!products.contains(productName)) {
        throw Exception('Product "$productName" not found.');
      }
      

      print('Product "$productName" is available.');
    } catch (e) {
      print('Error: $e');  
    } finally {
      print('Search operation completed.');
    }
  }

  
  void displayProducts() {
    print('Available products:');
    for (var product in products) {
      print('- $product');
    }
  }

  
  void showMenu() {
    print('\n--- KD MART Product Search ---');
    print('1. View all available products');
    print('2. Search for a product');
    print('3. Exit');
  }

 
  void handleUserInput() {
    bool continueRunning = true;

    while (continueRunning) {
      showMenu();
      stdout.write('Enter your choice : ');
      String? choice = stdin.readLineSync();

      switch (choice) {
        case '1':
          displayProducts();  
          break;
        case '2':
          stdout.write('Enter a product name to search: ');
          String? productName = stdin.readLineSync();
          if (productName != null && productName.isNotEmpty) {
            searchProduct(productName.trim());
          } else {
            print('Error: Please enter a valid product name.');
          }
          break;
        case '3':
          print('Exiting the system.Visit Again To Kd Mart!');
          continueRunning = false;
          break;
        default:
          print('Invalid choice. Please select a valid option.');
      }
    }
  }
}

void main() {
  var searchSystem = ProductSearchSystem();
  searchSystem.handleUserInput();  
}
