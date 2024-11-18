void main(List<String> args) {
  /*
  Question1 : you should get 3 double valiable and then you shoul get average?
  Question2 : 1 den 100e kadar olan ve 15 ile tam bolunebilen sayilarin karelerini ekrana yazdirin
  Questions3; tanimlanan int bir sayinin faktoriyelini bulan uygulamayi yaziniz/
  */

  double numb1 = 10.3, numb2 = 5.45, numb3 = 8.45;
  double result = (numb1 + numb2 + numb3) / 3;
  print("3 sayinin ortalamasi? $result");

  for (int i = 1; i <= 100; i++) {
    if ((i % 5) == 0 && (i % 3) == 0) {
      print("1-100 arasinda 15'e bolunen sayilar: $i");
    }
  }

  int number = 5;
  int result2 = 1;
  int counter = 1;

  while (counter <= number) {
    result2 = result2 * counter;
    counter++;
  }
  print("10'faktoriyeli: $result2");
}
