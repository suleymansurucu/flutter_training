void main (){
  additionMethod(384, 867);

  print("subtraction solution: ${subtractionMethod(765, 128).toString()}");
  print("multiplication solution: ${multiplicationMethod(36, 123).toString()}");
  print("25 vs 35 and bing number is: ${findBigNumber(25, 35).toString()}");

}

additionMethod(int number1, int number2){
  print("addition solution: ${number1+number2}");
}

subtractionMethod(int number1, int number2){
  return number1-number2;
}

multiplicationMethod(int number1,number2) => number1*number2;

findBigNumber(int number1, number2) => number1>number2 ? number1 : number2;

