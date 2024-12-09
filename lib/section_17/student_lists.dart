import 'package:flutter/material.dart';

class StudentLists extends StatelessWidget {
  const StudentLists({super.key});

  @override
  Widget build(BuildContext context) {
    int elementValue = ModalRoute.of(context)!.settings.arguments as int;
    List<Student> allStudents = List.generate(
        elementValue,
        (index) =>
            Student(index + 1, 'Name is {$index+1}', 'Surname is {$index+1}'));
    print("Element value is $elementValue");
    return Scaffold(
        appBar: AppBar(
          title: Text("Student List"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                var selectedStudent = allStudents[index];
                Navigator.pushNamed(context, '/studentDetail', arguments: selectedStudent);
              },
              leading: CircleAvatar(
                child: Text(allStudents[index].id.toString()),
              ),
              title: Text(allStudents[index].name),
              subtitle: Text(allStudents[index].surname),
            );
          },
          itemCount: elementValue,
        ));
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
