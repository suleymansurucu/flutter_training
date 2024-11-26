main() {
  calculatte2Number(20, 23);

  Function f1 = (int number1, int number2) {
    print("$number1+$number2= ${number1 + number2}");
  };
  f1(30, 44);


  var f2=(int n1,n2)=> n1+n2;

  print(f2(23,44));
}

// named function
void calculatte2Number(int number1, int number2) {
  print("$number1+$number2= ${number1 + number2}");
}
