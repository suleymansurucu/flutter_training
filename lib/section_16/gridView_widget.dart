import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2), itemBuilder: (BuildContext context, int index) {
      return Container(
          alignment: Alignment.center,
          color: Colors.teal[100*(index%9)],
      child: Text(
      "Hello Flutter $index",
      style: TextStyle(fontWeight: FontWeight.bold),
      )
      ,
      );
    });
  }
}

/*
GridView.extent(

      maxCrossAxisExtent: 400,
      scrollDirection: Axis.vertical,
      primary: false,
      // reverse: true,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter1",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter2",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter3",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter4",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter5",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter6",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter7",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter8",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );

 */

/*
*GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      primary: false,
      reverse: true,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,

      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter1",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter2",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter3",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter4",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter5",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter6",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter7",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            "Hello Flutter8",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

      ],
    );
*
 */
