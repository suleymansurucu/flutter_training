main() {
  List<int> numbers = List.filled(5, 1, growable: true);
  numbers[0] = 4;
  numbers[1] = 10;
  numbers[2] = 2;

  print(numbers);
  numbers.remove(10);
  print(numbers);

  List<String> names = List.filled(5, "");
  names[0] = 5.toString();
  names[1] = "Suleyman SURUCU";
  print(names);

  List<int> number2=[10,33,2,5,99];
  if(number2.isNotEmpty){
    print(number2.first);
    print(number2.last);
  }
  print("Bos mu: " +number2.isNotEmpty.toString());
  print("eleman sayisi: " +number2.length.toString());
  print("Ters Siradan: " +number2.reversed.toString());

  number2.add(765);
  print(number2);
  number2.remove(3);
  number2.removeAt(2);
  print(number2);

  print(number2.elementAt(2));
  print(number2.indexOf(3));
  number2.shuffle();
  print(number2);


}
