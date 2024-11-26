import 'dart:math';

main() {
  try {
    double result = squareRoot(-25);
    print(result);
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double squareRoot(int i) {
  if (i < 0) {
    throw FormatException("number cannot be negative");
    print("try");
  } else
    return sqrt(i);
}
