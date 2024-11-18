void main() {

  calculatePerimeter();
  calculateArea(10, 8);
  int resultArea=calculateArea(11, 22);
  print("result area calculate is : $resultArea");
}

void calculatePerimeter() {
  int width = 10, height = 20;
  int perimeterResult = (width + height) * 2;
  print("widht: $width, height: $height perimeterResult : $perimeterResult");
}

int calculateArea(int number1, int number2){

  // print("area is: ${number1*number2}");
  // this way is return to result...
  return number1*number2;
}
