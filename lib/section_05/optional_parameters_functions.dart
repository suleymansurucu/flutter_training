main(){
  print("3 number additional is ${additionalMethod(32, 231, 22)}");
  print("3 numbber optional method is ${additionalMethod2(33, 22,3)}");
  print("Multiplication when 3 numbers are given ${multiplicationMethod(number1: 1,number2: 3)}");

}

// required parameter example
additionalMethod(int number1,number2,number3){
  return number1+number2+number3;
}

// Optional parameters
// when you used the method, you should put [] in the function inside.
additionalMethod2(int number1, int number2, [int number3=0]){
  return number1+number2+number3;
}

//optionalNamed
multiplicationMethod({int number1=1,int number2=1, int number3=1}){
  return number1*number2*number3;
}