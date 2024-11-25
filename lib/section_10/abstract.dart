main() {
  Shape shape1 = Square(10);
  print(shape1.calculateArea());
  print(shape1.calculatePerimeter());
  print("************");
  shape1.showMessage();

  Shape shape2 = Rentangle(23, 55);
  print(shape2.calculateArea());
  print(shape2.calculatePerimeter());
  shape2.showMessage();

  // Create list of Square Shapes
  List<Square> allSquare = [];
  List<Rentangle> allRentganle = [];

  // OR EASY WAY.... =>
  List<Shape> allShapes = [];
  allShapes.add(shape1);
  allShapes.add(shape2);
}

abstract class Shape {
  calculateArea();

  calculatePerimeter();

  void showMessage() {
    print("I'm here in class of shape");
  }
}

class Square extends Shape {
  int number;

  Square(this.number);

  @override
  calculateArea() {
    return {number * number}.toString();
  }

  @override
  calculatePerimeter() {
    return {number * 4}.toString();
  }

  @override
  void showMessage() {
    print("I'm here in class of SQUARE");
  }
}

class Rentangle extends Shape {
  int edge1, edge2;

  Rentangle(this.edge1, this.edge2);

  @override
  calculateArea() {
    return {edge1 * edge2}.toString();
  }

  @override
  calculatePerimeter() {
    return {edge1 * edge2 * 2}.toString();
  }

  @override
  void showMessage() {
    print("I'm here in class of RENTANGLE");
  }
}
