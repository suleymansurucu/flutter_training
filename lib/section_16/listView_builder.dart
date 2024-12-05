import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class MyListViewBuilder extends StatelessWidget {
  MyListViewBuilder({super.key});

  List<Student> allStudents = List.generate(
      500,
      (index) => Student(index + 1, "Ogrenci Adi ${index + 1}",
          "Ogrenci Soyadi ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Student Lists',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            var studentVariable = allStudents[index];
            return Card(
              color: index % 2 == 0
                  ? Colors.orange.shade100
                  : Colors.purple.shade100,
              child: ListTile(
                onTap: () {
                  print("$index 's called element");
                  print(studentVariable.surname);
                  EasyLoading.showToast("Element clicked",duration: Duration(seconds: 2),dismissOnTap: true, toastPosition: EasyLoadingToastPosition.bottom);
                },
                leading:
                    CircleAvatar(child: Text(studentVariable.id.toString())),
                title: Text(studentVariable.name),
                subtitle: Text(studentVariable.surname),
              ),
            );
          },
          itemCount: allStudents.length,
          separatorBuilder: (BuildContext context, int index) {
            var newIndex = index + 1;
            if (newIndex % 4 == 0) {
              return Divider(
                thickness: 2,
                color: Colors.deepPurpleAccent,
              );
            } else
              return SizedBox();
          },
        ));
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
