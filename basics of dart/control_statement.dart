void main() {

  print("=> This is if-else statement");
  int number = 10;

  if (number > 0) {
    print("o Number is positive");
  } else {
    print("o Number is not positive");
  }


print("=> This is Else-if statement");
  
  int abc = -10;

  if (abc > 0) {
    print("o Positive");
  } else if (abc < 0) {
    print("o Negative");
  } else {
    print("o Zero");
  }



   print("=> This is Switch case");
  String grade = 'A';

  switch (grade) {
    case 'A':
      print("o Excellent");
      break;
    case 'B':
      print("o Good");
      break;
    default:
      print("o Invalid grade");
  }
  

  print("=> This is for Loop");
  for (int i = 0; i < 5; i++) {
    print("o Iteration $i");
  }


  print("=> This is For-in Loop");
  var num= [10, 20, 30];
  for (var num in num) {
    print(num);
  }
  
  print("=> This is while Loop");
 int i = 0;

  while (i < 5) {
    print("o Iteration $i");
    i++;
  }
  
  print("=> This is do-while Loop");
   int j = 0;

  do {
    print("o Iteration $j");
    j++;
  } while (j < 5);
}










