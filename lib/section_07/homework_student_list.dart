import 'dart:math';

import 'package:flutter_training/section_07/class_student_db.dart';

main() {
  StudentList studentList = StudentList(studentId: 1, studentNote: 100);
  List<StudentList> allStudent = List.filled(100, StudentList());
  fillToStudentList(allStudent);

  for (StudentList countableList in allStudent) {
    print(countableList);
  }
}

void fillToStudentList(List<StudentList> studentList) {
  for (int i = 0; i < 100; i++) {
    studentList[i] = StudentList(
        studentId: Random().nextInt(1000), studentNote: Random().nextInt(100));
  }
}
