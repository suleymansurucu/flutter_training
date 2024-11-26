main() {
  var returnToFunction = calculate(30);
  var result = returnToFunction(40);
  print(result);
}

Function calculate(int number1) {
  return (int number2) => number1 * number2;
}
