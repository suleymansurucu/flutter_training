import 'package:flutter/material.dart';

class GridviewWidgetBoxDecoration extends StatelessWidget {
  const GridviewWidgetBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue, width: 5, style: BorderStyle.solid
              ),
              color: Colors.teal[100 * (index % 9)],
              gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.yellowAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              image: DecorationImage(
                image: AssetImage("assets/images/image1.png"),
                alignment: Alignment.topCenter,
                fit: BoxFit.contain,
              ),
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            child: Text(
              textAlign: TextAlign.center,
              "Hello Flutter $index",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
