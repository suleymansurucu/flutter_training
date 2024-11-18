void main(List<String> args) {
  int number1 = 12;
  num number2 = 18;
  // var number3 = 16;

  if (number1 > number2) {
    print("$number1 sayisi $number2 sayisindan buyuktur");
  } else {
    print("$number1 sayisi $number2 sayisindan kucuktur");
  }

  print("******************************");
  int examresult = 70;

  if (examresult > 90 && examresult <= 100) {
    print("Your exam result AA");
  } else if (examresult < 90 && examresult >= 80) {
    print("Your Exam result BA");
  } else if (examresult < 80 && examresult >= 70) {
    print("Your Exam result BB");
  } else if (examresult < 70 && examresult >= 60) {
    print("Your Exam result CC");
  } else if (examresult < 60 && examresult >= 40) {
    print("Your Exam result DD");
  } else {
    print("Your Exam result FF");
  }
}
