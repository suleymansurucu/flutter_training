main() {

  var bmw = Car("2024", "BMW", true);
  bmw.resultCarProp();

  var audi = Car("2025", "AUDI", true);
  audi.resultCarProp();
  var honda = Car("2014", "HONDA", true);
  honda.resultCarProp();
  var toyota = Car("2023", "Toyota", false);
  toyota.resultCarProp();
}

class Car {
  String? model;
  String? make;
  bool? isAutomatic;

  Car(this.model,this.make,this.isAutomatic) {
    print("Class call to action");
  }

  void resultCarProp() {
    print(
        "Class call to action and the car model is ${model} make is ${make}, is it Automatic : ${isAutomatic}");
  }
}
