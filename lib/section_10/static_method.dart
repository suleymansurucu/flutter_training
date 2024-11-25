main() {
  MathOperators m1=MathOperators(30, 40);

  m1.add();
  m1.number2;
  m1.subtraction();
  MathOperators.PI;
  MathOperators.sayToClassName();

  MathOperators m2=MathOperators(50, 40);

  m2.add();
  m2.number2;
  m2.subtraction();
  m2.subtraction();
  m2.subtraction();
  MathOperators.PI;
  MathOperators.sayToClassName();
  print("All Progress = ${MathOperators.addToProgressCount} ");


}

class MathOperators {
  int number1;
  int number2;
  static double PI = 3.14;
  static int addToProgressCount = 0;

  MathOperators(this.number1, this.number2);

  static void sayToClassName() {
    print("I'm Math class");
  }

  void add() {
    sayToClassName();
    addToProgressCount++;
    print("$number1 + $number2= ${number1+number2} ");
  }
  void subtraction() {
    sayToClassName();
    addToProgressCount++;
    print("$number1 - $number2= ${number1-number2} ");
  }
}
