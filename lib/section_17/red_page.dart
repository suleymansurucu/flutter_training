import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              int _randomValue = Random().nextInt(100);
              print(_randomValue);
              Navigator.of(context).pop(_randomValue);
            },
            child: Text("BacktoHomePage"),
          ),
        ],
      )),
    );
  }
}
