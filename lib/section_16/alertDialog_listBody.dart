import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class MyListViewBuilderAlertDialog extends StatelessWidget {
  MyListViewBuilderAlertDialog({super.key});

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
                  EasyLoading.showToast("Element clicked",
                      duration: Duration(seconds: 2),
                      dismissOnTap: true,
                      toastPosition: EasyLoadingToastPosition.bottom);
                },
                onLongPress: () {
                  alertDialogProgress(context, studentVariable);
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

 void alertDialogProgress(BuildContext myContext, Student selectedOgrenci) {
    showDialog(
        context: myContext,
        builder: (context) {
          return AlertDialog(
            // title: Text(selectedOgrenci.name.toString()),
            title: Text(selectedOgrenci.toString()),
            content: SingleChildScrollView(
              child: ListBody(

                children: [
                  Text("Suleyman Surucu" * 100),
                  Text("Eda Mihriban" * 100),
                  Text("Fatma Sara" * 100),
                ],
              ),
            ),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("KAPAT")),
                TextButton(onPressed: (){}, child: Text("ANLADIM")),
              ],
          );
        });
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);

  @override
  String toString() {
    // TODO: implement toString
    return "Name: $name, Surname: $surname, ID: $id";
  }
}
