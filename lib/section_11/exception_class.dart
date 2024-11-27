main() {
  try {
    var suleyman = Student(-10);
    print(suleyman.yas);
  } on AgeException catch (e) {
    print(e.message);
  }
}

class AgeException implements Exception {
  String message;

  AgeException({this.message = 'Age Exception'});

  @override
  String toString() {
    // TODO: implement toString
    return "Hatanin toString metotu calisti";
  }
}

class Student {
  int yas;

  Student(this.yas) {
    if (yas < 0) {
      throw AgeException();
    } else
      this.yas = yas;
  }
}

