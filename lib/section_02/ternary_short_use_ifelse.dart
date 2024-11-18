void main(List<String> args) {
  int num1 = 12;
  int num2 = 15;
  int totaly = 0;

  //num1 > num2 ? totaly = num2 : totaly = num1;
  // ? = if, : = else. The using name is ternary, that why is because easy and short way.
  totaly = num1 > num2 ? num2 : num1;
  print("Kucuk Sayi $totaly");

  String? name = "Suleyman";
  String? surName = null;
  String? text;
  //dart do not accept null value for valiable. if you use wanna null valiabel, you should put question mark in from beginning.

  text = name ?? surName;
  // double question marks is first null is name and check null
  print("Merhaba $text");
}
