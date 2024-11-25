import 'dart:math';

class StudentList {
  int studentId;
  int studentNote;

  StudentList({this.studentId = 1, this.studentNote = 1});


  @override
  String toString() {
    return "Student ID: $studentId - Student Name: $studentNote ";
  }
}