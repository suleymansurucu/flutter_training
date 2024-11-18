void main(List<String> args) {
  double number1 = 20;
  double number2 = 30;

  //Basic 4 function calculator
  print("$number1 + $number2 addition; ${number1 + number2}");
  print("$number1 - $number2 subtraction; ${number1 - number2}");
  print("$number1 * $number2 multiplication; ${number1 * number2}");
  print("$number1 / $number2 division; ${number1 / number2}");
  print("$number1 % $number2 mod; ${number1 % number2}");

  // ATAMA VE KARSILATIRMA

  double number3 = 5;
  number3 = number3 + 5;
  number3 += 5; // number3 = number3 + 5;
  print("$number3");

  // <, >, <=, >=, ==, !=

  // && ==> ve, || ==> veya,!

  bool condition1 = true;
  bool condition2 = false;
  print(condition1 && condition2);
  print(condition1 || condition2);
}
