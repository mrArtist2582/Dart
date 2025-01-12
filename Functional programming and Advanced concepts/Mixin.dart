/*
 Mixins
 In this scenario,
  both Car and Motorcycle will be separate classes without any inheritance.
  We will use a mixin to give both classes the ability to accelerate and decelerate.

 */
mixin Speed {
  double speed = 0.0;

  void accelerate(double amount) {
    speed = speed + amount;
    print("Speed is increased by $amount . Current Seed is : $speed ");
  }

  void decelerate(double amount) {
    speed = speed - amount;
    print("Speed is decreased by $amount . Current Seed is : $speed ");
  }
}

class car with Speed {
  String name;

  car(this.name);
  void describe() {
    print("This is car named : $name ");
  }
}

class motorcycle with Speed {
  String name;
  motorcycle(this.name);

  void describe() {
    print("This is motorcycle  named : $name ");
  }
}

void main() {
  car Car = car("BMW");
  motorcycle Motorcycle = motorcycle("Yamaha");
  
  Car.describe();
  Motorcycle.describe();

  Car.accelerate(70);
  Car.decelerate(10);

  Motorcycle.accelerate(40);
  Motorcycle.decelerate(10);

}