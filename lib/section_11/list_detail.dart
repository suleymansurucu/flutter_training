main() {
  Person suleyman = Person(1, "Suleyman");
  Student eda = Student(4, "Eda Mihriban", 5);
  Person fatma = Student(3, "Fatma Sara", 4);
  var sara = Person(10, "Sara Surucu");
  var arif = Student(7, "Arif Sari", 6);

  List<Person> allStudent = [suleyman, eda, fatma, sara, arif];

  allStudent.add(fatma);
  allStudent.addAll([arif, eda]);
  print(allStudent);

  bool result = allStudent.any((Person element) => element.id > 10);
  print(result);

  Map<int, Person> newMap = allStudent.asMap();
  print(newMap[0]!.name);

  print(allStudent.contains("Suleyman"));

  bool resultEveru= allStudent.every((element)=> element.name.length > 0);
  print("*********");

  print(resultEveru);

  var mapIterable = allStudent.map((Person element) => "${element.name}").toString();
  var mapIterableSet = allStudent.map((Person element) => "${element.name}").toSet();
  print(mapIterable);
  print(mapIterableSet);

  allStudent.sort((student1,studen2){
    if(student1.id > studen2.id){
      return 1;
    } else if (student1.id < studen2.id){
      return -1;
    } else
      return 0;
  });
  print("****");
  print(allStudent);





  var list1 = List<Student>.filled(5, Student(0, "", 0));
  // var listFrom=List<Student>.from(allStudent);
  var listOf = List<Student>.from(allStudent.whereType<Student>());
  print(listOf);

  var listGenerate = List<int>.generate(5, (index) => index + 2);
  print(listGenerate);

  var listGenerate2 =
      List<Student>.generate(5, (index) => Student(index, "index", index + 2));
  print(listGenerate2);

  var notAbleToChangeList = List.unmodifiable([1, 2, 3]);
  // it is not using because unmodifiable,notAbleToChangeList.add(5);
  print(notAbleToChangeList);
}

class Person {
  int id = 0;
  String name = "";

  Person(this.id, this.name);

  @override
  String toString() {
    // TODO: implement toString
    return "id : $id, name : $name\n";
  }
}

class Student extends Person {
  int muchLessonAttent = 0;

  Student(super.id, super.name, this.muchLessonAttent);

  @override
  String toString() {
    // TODO: implement toString
    return "id: $id, name: $name, class count is : $muchLessonAttent\n";
  }
}
