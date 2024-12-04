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
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Title"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          // alignment: Alignment.center,
          // width: 200,
          // height: 400,
          color: Colors.tealAccent,
          child: Text(
            "Suleyman" * 10,
            textAlign: TextAlign.center,
          ),
          constraints: BoxConstraints(
              minHeight: 100, minWidth: 100, maxHeight: 300, maxWidth: 300),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tiklandi');
          },
          child: Icon(
            Icons.person,
            color: Colors.amber,
          ),
          backgroundColor: Colors.teal,
        ),
      ),
    );
    throw UnimplementedError();
  }
}
