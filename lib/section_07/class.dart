main() {
  StudentInformation suleyman = StudentInformation();
  suleyman.studentId = 192;
  suleyman.studentName = "Suleyman Surucu";
  suleyman.active = true;
  StudentInformation edaMihriban = StudentInformation();
  StudentInformation fatmaSara = StudentInformation();
  StudentInformation omer = StudentInformation();

  var kemal=StudentInformation();
  dynamic yasin=StudentInformation();


  omer.alertMessage();



}

class StudentInformation {
  int? studentId;
  String? studentName;
  bool? active;

  void alertMessage() {
    print("You called to class");
  }
}
