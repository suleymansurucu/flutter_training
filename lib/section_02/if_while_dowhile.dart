void main(List<String> args) {
  for (var i = 0; i < 10; i++) {
    print("I am writing my name at 10 times with for for array");
    if (i % 2 == 0) {
      print("Cift sayilari yaziyorum. $i");
    }
  }

  List classStudentName = ["Eda", "Suleyman", "Fatma Sara"];
  for (String gecici in classStudentName) {
    print("$gecici");
  }

  for (int i = 0; i < classStudentName.length; i++) {
    print("List $i : ${classStudentName[i]}");
  }

  int counter = 0;
  while (counter < 3) {
    print("Counter text value: $counter");
    counter++;
  }
  int counter2 = 0;
  do {
    print("counter value: $counter2");
    counter2++;
  } while (counter2 < 5);

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("i valuee ; $i");
  }

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      print("$i * $j = ${i * j}");
    }
  }
}
