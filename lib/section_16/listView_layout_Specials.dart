import 'package:flutter/material.dart';

class ListviewLayoutSpecials extends StatelessWidget {
  const ListviewLayoutSpecials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Layout Problems"),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.red),
        ),
        child: Column(
          children: [
            Text("Text starting"),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    height: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange.shade600,
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange.shade800,
                  ),
                  Text("Text finishing"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
