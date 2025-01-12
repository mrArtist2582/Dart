class Calculator<T extends num> {        // only numeric type of data can be compute cause the boundry is num.(int or double)
   add(T num1, T num2) {
    return num1 + num2;
  }
}
 
  void main(){

     var calInt = Calculator<int>();
     print(calInt.add(3,5));

     var calDouble = Calculator<double>();
     print(calDouble.add(12.3, 4.3));
  }