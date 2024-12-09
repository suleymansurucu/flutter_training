import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsableToolbarExample extends StatelessWidget {
  const CollapsableToolbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          // title: Text("Sliver AppBar"),
          backgroundColor: Colors.redAccent,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/image1.png",
              fit: BoxFit.cover,
            ),
            title: Text("Silver App Bar"),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(delegate: SliverChildListDelegate(listElements(),),),
        ),
        SliverGrid(delegate: SliverChildListDelegate(listElements(),), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        SliverPadding(
          padding: EdgeInsets.all(10), sliver: SliverList(delegate: SliverChildBuilderDelegate(_dynamicCreateFunction, childCount: 10),),
        ),
        SliverGrid(delegate: SliverChildBuilderDelegate(_dynamicCreateFunction, childCount: 6), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
        SliverPadding(
          padding: EdgeInsets.all(16), sliver: SliverFixedExtentList(delegate: SliverChildListDelegate(listElements()), itemExtent: 330),
        ),
        SliverPadding(
          padding: EdgeInsets.all(16), sliver: SliverFixedExtentList(delegate: SliverChildBuilderDelegate(_dynamicCreateFunction, childCount: 6), itemExtent: 130),
        ),
      ],
    );
  }

  Widget? _dynamicCreateFunction(BuildContext context, int index) {
    return Container(
      height: 150,
      color: _randomCreateColor(),
      alignment: Alignment.center,
      child: Text(
        "Dynamic List Element Hello Flutter $index",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _randomCreateColor() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}

List<Widget> listElements() {
  return [
    Container(
      height: 150,
      color: Colors.amber,
      alignment: Alignment.center,
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Container(
      height: 150,
      color: Colors.redAccent,
      alignment: Alignment.center,
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Container(
      height: 150,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Container(
      height: 150,
      color: Colors.deepPurpleAccent,
      alignment: Alignment.center,
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Container(
      height: 150,
      color: Colors.green,
      alignment: Alignment.center,
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Container(
      height: 150,
      color: Colors.orange,
      alignment: Alignment.center,
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Container(
      height: 150,
      color: Colors.amberAccent,
      alignment: Alignment.center,
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ];
}
