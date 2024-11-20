main() {
  var suleymanSurucu = StudentList(512, "Suleyman Surucu");
  var edaMihriban = StudentList.WithOutId("Eda Mihriban Sari");
  var fatmaSara = StudentList.facoryConstruction(-10, "Fatma Sara");
  print(fatmaSara.id);
  print(fatmaSara.studentName);
}

class StudentList {
  int? id;
  String? studentName;

  StudentList(this.id, this.studentName) {
    print("construction called...");
  }

  StudentList.WithOutId(this.studentName) {
    print("construction called ...");
  }

  factory StudentList.facoryConstruction(int? id, String? studentName) {
    if (id! <= 0) {
      print("please enter to correctly id");
      return StudentList(0, studentName);
    } else {
      return StudentList(id, studentName);
    }
  }
}
