/* 
------------------------------------------------bookstore-----------------------------------------------------
 imagin You want to manage the availability of books. 
 Some books might be available, while others might not be in stock, 
 so we need to handle cases where a book might be null (not available).
 
*/

class Book{

String title;
bool? isAvaialable;
Book(this.title, this.isAvaialable);
 
  void checkAvaialability(){
    if(isAvaialable == null){
      print("The availability of $title is unknown.");
    } else if(isAvaialable!){
      print("The  book $title is Available"); 
    }
    else{
      print("The book $title is not Available.");
    }
    }
  }

  void main(){
     var book1 = Book("Dart 1", true);
     var book2 = Book("Dart 2", null);
     var book3 = Book("Dart 3", false);

     book1.checkAvaialability();
     book2.checkAvaialability();
     book3.checkAvaialability();
  }

