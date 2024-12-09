import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
   MyListView({super.key});

  List<StudentList> allStudents=List.generate(500, (index) => StudentList(index+1, "Ogrenci Adi ${index+1}", "Ogrenci Soyadi ${index+1}") );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Lists',
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: allStudents.map((StudentList std) => ListTile(
          title: Text(std.name),
          subtitle: Text(std.surname),
          leading: CircleAvatar(child: Text(std.id.toString()),),
        )).toList(),
      ),
    );
  }
}

class StudentList {
  final int id;
  final String name;
  final String surname;
  StudentList(this.id,this.name,this.surname);

}
