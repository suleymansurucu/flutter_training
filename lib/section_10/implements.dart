main(){

}

abstract class LivingAnimals{
void example (){
  print("I am here in Living Animals");
}
}
abstract class CanFly{
  void fly();
}

abstract class CanRun{
  void run();
}

abstract class CanBark{
  void bark();
}

class Dog extends LivingAnimals implements CanRun,CanBark{
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }

}

class Birds implements CanFly{
  @override
  void fly() {
    // TODO: implement fly
  }
  void test(){
    print("I'm flying");
  }

}
