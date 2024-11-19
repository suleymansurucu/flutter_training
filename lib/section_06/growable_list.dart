main() {
  // growable list using
  List<int> numbers = [];

  numbers.add(10);
  numbers.add(40);
  numbers.add(948);
  numbers.add(1);
  print(numbers);
  print(numbers.length);

  List<int> number2 = [1, 2, 3];
  number2.add(45);
  print(number2);

  List<int> number3 = List.filled(10, 10, growable: true);
  number3.add(12);
  number3.add(45);
  number3[0]=99;
  print(number3);
  print(number3.length);


  // Same method use..
  List<int> number4 = List.empty(growable: true);
  List<int> number5 = [];
}
