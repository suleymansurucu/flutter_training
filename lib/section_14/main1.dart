import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.teal, secondaryHeaderColor: Colors.greenAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
          backgroundColor: Colors.amber,
        ),
        body: Text(
          "Bismillahirrahmanirrahim",
          style: TextStyle(
              color: Colors.teal, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          debugPrint('Tiklandi');
        }),
      ),
    );
    throw UnimplementedError();
  }
}
