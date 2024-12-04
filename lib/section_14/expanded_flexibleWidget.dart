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
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Title"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: expandedContainer),
        ),
      ),
    );
    throw UnimplementedError();
  }

  List<Widget> get tempContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.yellowAccent,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.green,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
    ];
  }
  List<Widget> get expandedContainer {
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 4,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellowAccent,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.green,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
    ];
  }
}
