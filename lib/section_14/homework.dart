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
          color: Colors.blue,
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("D"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    child: Text("A"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    child: Text("R"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade500,
                  ),
                  Container(
                    child: Text("T"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade700,
                  ),
                ],
              ),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Container(
                    child: Text("F"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    child: Text("L"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    child: Text("U"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    child: Text("T"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    child: Text("T"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade500,
                  ),
                  Container(
                    child: Text("E"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade600,
                  ),
                  Container(
                    child: Text("R"),
                    width: 75,
                    height: 75,
                    color: Colors.orange.shade700,
                  ),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
