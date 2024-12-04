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
        // body: Container(
        //   color: Colors.purple,
        //   width: 200,
        //   height: 200,
        //   child: Text("Suleyman Surucu" *10),
        //   constraints: BoxConstraints(
        //       minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
        //   //margin: EdgeInsets.all(10),
        //   // margin: EdgeInsets.only(top: 10,left: 20),
        //   // margin: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
        //   margin: EdgeInsets.fromLTRB(10, 20, 5, 10),
        //   padding: EdgeInsets.all(20),
        // ),

        // body: Center(
        //   child: Container(
        //     width: 100,
        //     height: 100,
        //     color: Colors.red,
        //     alignment: Alignment.center,
        //     child: Container(
        //       color: Colors.blue,
        //       width: 50,
        //       height: 50,
        //     ),
        //   ),
        // ),

        body: Center(
          widthFactor: 2,
          heightFactor: 2,
          child: Container(
            child: Text("Suleyman Surucu"),
            color: Colors.blueAccent,

          ),
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
