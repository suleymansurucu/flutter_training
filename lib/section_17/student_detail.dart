import 'package:flutter/material.dart';
import 'package:flutter_training/section_16/listView.dart';

class StudentDetail extends StatelessWidget {
  final StudentList selectedStudent;

  const StudentDetail({required this.selectedStudent, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Detail Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(selectedStudent.id.toString()),
            Text(selectedStudent.name),
            Text(selectedStudent.surname),
          ],
        ),
      ),
    );
  }
}
