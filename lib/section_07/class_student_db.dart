import 'dart:math';

class StudentList{
int? studentId;
int? studentNote;
var randomId=Random();
var randomNote=Random();
  var studentNoteMap=Map();

  StudentList(){
    studentListAlet();
  }

  void studentListAlet() {
    for (int i = 1; i <= 100; i++) {
      studentId=randomId.nextInt(1000);
      studentNote=randomNote.nextInt(100);
      studentNoteMap.addEntries(studentId, studentNote);
    }
    print(studentNoteMap);
  }






}